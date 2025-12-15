package com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.handler;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    private final MemberService memberService;

    @Autowired
    public CustomAuthenticationSuccessHandler(MemberService memberService) {
        this.memberService = memberService;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        Member member = memberService.findById(authentication.getName());
        if (member != null) {
            if (!member.isEnabled()) {
                SecurityContextHolder.clearContext();
                HttpSession session = request.getSession(false);
                if (session != null) {
                    session.invalidate();
                }
                for (Cookie cookie : request.getCookies()) {
                    if (cookie.getName().equalsIgnoreCase("JSESSIONID")) {
                        cookie.setMaxAge(0);
                    }
                }
                response.sendRedirect("/index?error=state");
                return;
            }

            member.setLoginDateTime(new Date());
            memberService.saveOrUpdate(member);
            request.getSession().setMaxInactiveInterval(3600);
            response.sendRedirect(request.getRequestURI().contains("login") ? "/index" : request.getRequestURI());
        }
        else {
            response.sendRedirect("/index?error=user");
        }
    }
}