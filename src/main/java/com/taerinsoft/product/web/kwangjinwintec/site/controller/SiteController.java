package com.taerinsoft.product.web.kwangjinwintec.site.controller;

import com.google.common.collect.Maps;
import com.taerinsoft.product.web.kwangjinwintec.site.controller.parent.SiteAbstractController;
import com.taerinsoft.product.web.kwangjinwintec.site.controller.util.SiteControllerUtil;
import com.taerinsoft.product.web.kwangjinwintec.site.data.NavStaticConstants;
import com.taerinsoft.product.web.kwangjinwintec.site.data.opendart.FinancialData;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class SiteController extends SiteAbstractController {

    private final OpendartApiService openDartResult;
    private final NoticeService noticeService;

    @Qualifier(value = "stockInfoReadService")
    private final StockInfoReadService stockInfoReadService;

    @Autowired
    public SiteController(HttpServletRequest request, SiteControllerUtil siteControllerUtil, OpendartApiService openDartResult, NoticeService noticeService, StockInfoReadService stockInfoReadService) {
        super(request, siteControllerUtil);
        this.openDartResult = openDartResult;
        this.noticeService = noticeService;
        this.stockInfoReadService = stockInfoReadService;
    }

//    @RequestMapping(value = "/register")
//    public String register(Authentication authentication, Model model) {
//        if (authentication != null) {
//            return "redirect:/index";
//        }
//
//        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
//        return request.getRequestURI().substring(1) + "/module";
//    }

    @RequestMapping(value = "/index")
    public String index(Authentication authentication, @RequestParam(required = false) String error, Model model) {

        model.addAttribute("current", stockInfoReadService.currentVal());
        model.addAttribute("previous", stockInfoReadService.previousVal());

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
//        return uri + "module";
    }
    @RequestMapping(value = "/history")
    public String history(Authentication authentication, @RequestParam(required = false) String error, Model model) {

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }
    @RequestMapping(value = "/sitemap")
    public String sitemap(Authentication authentication, @RequestParam(required = false) String error, Model model) {

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }
    @RequestMapping(value = "/investment/finance/cfs")
    public String investmentCFS(@RequestParam(required = false) String error, Model model){

        List<FinancialData> resList = openDartResult.getFinancialStatement("CFS");
        int flag = 0;

        if (resList != null && resList.size() > 1) {
            flag = 1;
        }

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        model.addAttribute("resList", resList);
        model.addAttribute("resNotNull", flag);

        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/finance/ofs")
    public String investmentOFS(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        model.addAttribute("resList", openDartResult.getFinancialStatement("OFS"));
        return request.getRequestURI().substring(1) + "/module";

    }
    @RequestMapping(value = "/investment/stock", method = RequestMethod.GET)
    public String stock(@RequestParam(required = false) String error, Model model, @RequestParam(defaultValue = "1") int pageNum){

        String uri = request.getRequestURI().substring(1);
        Map<String, Object> data = Maps.newHashMap();

        List<NoticeConfig> noticeConfigList = noticeService.getList();
        data.put("noticeConfigList", noticeConfigList);
        data.put("pagination", noticeService.getPagination(pageNum));
        siteControllerUtil.setDefaultInfo(
                model,
                uri,
                NavStaticConstants.noticeIcon,
                NavStaticConstants.noticeMainTitle,
                NavStaticConstants.noticeConfigTitle
        );

        siteControllerUtil.addObjectToString(data, "noticeConfigData", noticeConfigList);
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
//    @RequestMapping(value = "/company/site/world")
//    public String world(@RequestParam(required = false) String error, Model model){
//
//        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
//        return request.getRequestURI().substring(1) + "/module";
//
//    }

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

    @RequestMapping(value = "/ethics/ethics1")
    public String ethics1(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics2")
    public String ethics2(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics21")
    public String ethics21(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics3")
    public String ethics3(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics31")
    public String ethics31(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics4")
    public String ethics4(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics5")
    public String ethics5(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/ethics/ethics6")
    public String ethics6(@RequestParam(required = false) String error, Model model){

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";
    }

    @RequestMapping(value = "/board_details")
    public String board_details(@RequestParam(required = false) String error, Model model, @RequestParam long idx){

        String uri = request.getRequestURI().substring(1);
        Map<String, Object> data = Maps.newHashMap();

        NoticeConfig noticeConfig = noticeService.getByIdx(idx);
        long maxIdx = noticeService.getByMaxIdx();
        List<Long> idxList = noticeService.getIdxList(idx);

        data.put("prev", idxList.get(0));
        data.put("next", idxList.get(1));
        data.put("notice", noticeConfig);
        data.put("maxidx", maxIdx);

        siteControllerUtil.setDefaultModel(model, data);

        model.addAttribute("device", HttpServletUtils.getDevice(request).name());
        return request.getRequestURI().substring(1) + "/module";

    }




    private String getStatus(String error) {
        switch (error) {
            case "passwd":
            case "auth":
            case "user":
                return "가입된 회원이 아니거나 패스워드가 틀립니다";
            case "duplication":
                return "중복 로그인 되셨습니다.";
            default:
                return "";
        }
    }
}
