package com.taerinsoft.product.web.kwangjinwintec.site.controller.parent;

import com.taerinsoft.product.web.kwangjinwintec.site.controller.util.SiteControllerUtil;

import javax.servlet.http.HttpServletRequest;

public class SiteAbstractController {
    protected final HttpServletRequest request;

    protected final SiteControllerUtil siteControllerUtil;

    public SiteAbstractController(HttpServletRequest request, SiteControllerUtil siteControllerUtil) {
        this.request = request;
        this.siteControllerUtil = siteControllerUtil;
    }
}
