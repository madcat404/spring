package com.taerinsoft.product.web.kwangjinwintec.site.controller.rest;

import com.taerinsoft.product.web.kwangjinwintec.site.data.request.MemberRegisterRequest;
import com.taerinsoft.product.web.kwangjinwintec.site.data.response.RestResponse;
import com.taerinsoft.product.web.kwangjinwintec.site.service.member.MemberRegisterService;
import com.taerinsoft.product.web.kwangjinwintec.site.utils.HttpServletUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping(value = "register/rest")
public class RegisterRestController {
    private final MemberRegisterService memberRegisterService;

    private final HttpServletRequest httpServletRequest;

    @Autowired
    public RegisterRestController(MemberRegisterService memberRegisterService, HttpServletRequest httpServletRequest) {
        this.memberRegisterService = memberRegisterService;
        this.httpServletRequest = httpServletRequest;
    }

    @RequestMapping(value = "execute", method = RequestMethod.POST)
    public RestResponse execute(@RequestBody MemberRegisterRequest request) {
        return memberRegisterService.execute(request, HttpServletUtils.getRequestIp(httpServletRequest));
    }
}
