package com.taerinsoft.product.web.kwangjinwintec.site.controller;

import com.google.common.collect.Maps;
import com.taerinsoft.product.web.kwangjinwintec.site.controller.parent.SiteAbstractController;
import com.taerinsoft.product.web.kwangjinwintec.site.controller.util.SiteControllerUtil;
import com.taerinsoft.product.web.kwangjinwintec.site.data.NavStaticConstants;
import com.taerinsoft.product.web.kwangjinwintec.site.entity.notice.NoticeConfig;
import com.taerinsoft.product.web.kwangjinwintec.site.service.macro.NoticeService;
import com.taerinsoft.product.web.kwangjinwintec.site.service.opendart.OpendartApiService;
import com.taerinsoft.product.web.kwangjinwintec.site.service.stock.StockInfoReadService;
import com.taerinsoft.product.web.kwangjinwintec.site.utils.HttpServletUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "eng")
public class EngSiteController extends SiteAbstractController {

    //private final InstagramApiRefreshService instagramApiRefreshService;
    private final OpendartApiService openDartResult;
    private final NoticeService noticeService;

    @Qualifier(value = "stockInfoReadService")
    private final StockInfoReadService stockInfoReadService;

    @Autowired
    public EngSiteController(HttpServletRequest request, SiteControllerUtil engControllerUtil, OpendartApiService openDartResult, NoticeService noticeService, StockInfoReadService stockInfoReadService) {
        super(request, engControllerUtil);
        this.openDartResult = openDartResult;
        this.noticeService = noticeService;
        this.stockInfoReadService = stockInfoReadService;
    }

    @RequestMapping(value = "/index")
    public String index(Authentication authentication, @RequestParam(required = false) String error, Model model) {

        model.addAttribute("current", stockInfoReadService.currentVal());
        model.addAttribute("previous", stockInfoReadService.previousVal());

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());

        return request.getRequestURI().substring(1) + "/module";
    }
    @RequestMapping(value = "/history")
    public String history(Authentication authentication, @RequestParam(required = false) String error, Model model) {

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
//        model.addAttribute("resList", openDartResult.getFinancialStatement());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/investment/finance/cfs")
    public String investmentCFS(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        model.addAttribute("resList", openDartResult.getFinancialStatement("CFS"));
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/finance/ofs")
    public String investmentOFS(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        model.addAttribute("resList", openDartResult.getFinancialStatement("OFS"));
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/stock")
    public String stock(@RequestParam(required = false) String error, Model model){

        String uri = request.getRequestURI().substring(1);
        Map<String, Object> data = Maps.newHashMap();

        List<NoticeConfig> macroConfigList = noticeService.getList();
        data.put("macroConfigList", macroConfigList);

        siteControllerUtil.setDefaultInfo(
                model,
                uri,
                NavStaticConstants.noticeIcon,
                NavStaticConstants.noticeMainTitle,
                NavStaticConstants.noticeConfigTitle
        );

        siteControllerUtil.addObjectToString(data, "macroConfigData", macroConfigList);
        siteControllerUtil.setDefaultModel(model, data);

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/announceinfo")
    public String announceinfo(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        model.addAttribute("disclosureList", openDartResult.getDisclosureInfoList());

        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/rules")
    public String rules(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());

        return request.getRequestURI().substring(1) + "/module";

    }

    @RequestMapping(value = "/company/certi")
    public String certi(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }

    @RequestMapping(value = "/company/certi2")
    public String certi2(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }

    @RequestMapping(value = "/company/test")
    public String test(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }

    @RequestMapping(value = "/company/site")
    public String site(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product")
    public String product(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product/handle")
    public String handle(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product/seatheat")
    public String seatheat(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product/coolseat")
    public String coolseat(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product/ecu")
    public String ecu(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/product/irwarmer")
    public String irwarmer(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/about")
    public String about(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/contact")
    public String contact(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/hr/talent")
    public String talent(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/hr/welfare")
    public String welfare(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/hr/recruit")
    public String recruit(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/board_details")
    public String board_details(@RequestParam(required = false) String error, Model model, @RequestParam long idx){

        String uri = request.getRequestURI().substring(1);
        Map<String, Object> data = Maps.newHashMap();

        NoticeConfig macroConfig = noticeService.getByIdx(idx);
        long maxIdx = noticeService.getByMaxIdx();
        List<Long> idxList = noticeService.getIdxList(idx);

        data.put("prev", idxList.get(0));
        data.put("next", idxList.get(1));
        data.put("notice", macroConfig);
        data.put("maxidx", maxIdx);

        siteControllerUtil.setDefaultModel(model, data);

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }

}
