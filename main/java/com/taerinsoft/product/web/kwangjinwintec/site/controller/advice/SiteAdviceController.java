package com.taerinsoft.product.web.kwangjinwintec.site.controller.advice;

import com.taerinsoft.product.web.kwangjinwintec.site.service.member.MemberService;
import com.taerinsoft.product.web.kwangjinwintec.site.utils.HttpServletUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

@ControllerAdvice("com.taerinsoft.product.web.kwangjinwintec.site")
public class SiteAdviceController {
    private Logger logger = LoggerFactory.getLogger(SiteAdviceController.class);

    @Value("${minified}")
    private Boolean minified;

    private final HttpServletRequest request;

    private final MemberService memberService;

    @Autowired
    public SiteAdviceController(HttpServletRequest request, MemberService memberService) {
        this.request = request;
        this.memberService = memberService;
    }

    @ModelAttribute
    public void setDefaultModelAttributes(Model model, Principal principal) {
        if (principal != null) {
            model.addAttribute("memberType", memberService.findById(principal.getName()).getType().name());
        }
        model.addAttribute("version", "0.0.15");
        model.addAttribute("userDevice", HttpServletUtils.getRealDevice(request).name());
        model.addAttribute("loggined", principal != null);
        model.addAttribute("minified", minified == null ? false : minified);
    }
}