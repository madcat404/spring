package com.taerinsoft.product.web.kwangjinwintec.site.utils;

import com.taerinsoft.product.web.kwangjinwintec.site.data.enums.DeviceType;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class HttpServletUtils {
    public static DeviceType getDevice(HttpServletRequest request) {
        //return DeviceType.pc;
        HttpSession session = request.getSession();
        String viewMode = (String) session.getAttribute("viewMode");
        if (StringUtils.isNotEmpty(viewMode)) {
            if (viewMode.equalsIgnoreCase("PC")) {
                return DeviceType.pc;
            }
            else {
                return request.getHeader("User-Agent").contains("Mobile") ? DeviceType.mobile : DeviceType.pc;
            }
        }
        else {
            if (StringUtils.isNotEmpty(request.getHeader("User-Agent"))) {
                return request.getHeader("User-Agent").contains("Mobile") ? DeviceType.mobile : DeviceType.pc;
            }
            return DeviceType.pc;
        }
    }

    public static DeviceType getRealDevice(HttpServletRequest request) {
        if (request.getHeader("User-Agent") != null) {
            return request.getHeader("User-Agent").contains("Mobile") ? DeviceType.mobile : DeviceType.pc;
        }
        return DeviceType.pc;
    }

    public static String getRequestIp(HttpServletRequest request) {
        String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null) {
            ip = request.getRemoteAddr();
        }
        if (StringUtils.isNotEmpty(ip) && ip.contains(",")) {
            ip = ip.split(",")[0].trim();
        }
        return ip;
    }
}
