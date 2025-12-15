package com.taerinsoft.product.web.kwangjinwintec.site.controller;

import com.taerinsoft.product.web.kwangjinwintec.site.controller.parent.SiteAbstractController;
import com.taerinsoft.product.web.kwangjinwintec.site.controller.util.SiteControllerUtil;
import com.taerinsoft.product.web.kwangjinwintec.site.service.opendart.OpendartApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value = "test")
public class TestController extends SiteAbstractController {

    private final OpendartApiService openDartService;


    @Autowired
    public TestController(HttpServletRequest request, SiteControllerUtil siteControllerUtil, OpendartApiService openDartService) {
        super(request, siteControllerUtil);
        this.openDartService = openDartService;
    }

}
