package com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.handler;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class CustomAuthenticationFailedHandler implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException {
        if (exception.getClass().isAssignableFrom(BadCredentialsException.class)) {
            response.sendRedirect("/index?error=passwd");
        }
        else if (exception.getClass().isAssignableFrom(InternalAuthenticationServiceException.class)) {
            response.sendRedirect("/index?error=user");
        }
        else {
            response.sendRedirect("/index?error=auth");
        }
    }
}
