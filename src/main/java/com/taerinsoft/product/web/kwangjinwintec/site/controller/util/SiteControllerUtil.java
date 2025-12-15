package com.taerinsoft.product.web.kwangjinwintec.site.controller.util;

import com.taerinsoft.product.web.kwangjinwintec.site.utils.HttpServletUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Component
public class SiteControllerUtil {
    private final ObjectMapper objectMapper;

    @Autowired
    public SiteControllerUtil(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public void setDefaultModel(Model model, Map<String, Object> data, String nav) {
        model.addAttribute("nav", nav);
        model.addAllAttributes(data);
    }

    public void addObjectToString(Map<String, Object> data, String attributeName, Object target) {
        try {
            data.put(attributeName, objectMapper.writeValueAsString(target));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }

    public void setDevice(Model model, HttpServletRequest request) {
        model.addAttribute("device", HttpServletUtils.getDevice(request));
    }

    public void setDefaultModel(Model model, Map<String, Object> data) {
        model.addAllAttributes(data);
    }
    public void setDefaultStringModel(Model model, Map<String, String> data) {
        model.addAllAttributes(data);
    }

    public void setDefaultInfo(Model model, String nav, String icon, String mainTitle, String subTitle) {
        model.addAttribute("nav", nav);
        model.addAttribute("icon", icon);
    }
}