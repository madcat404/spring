package com.taerinsoft.product.web.kwangjinwintec.site.utils;

public class UnicodeUtils {
    public static String convert(String message) {
        StringBuilder str = new StringBuilder();

        for (int i = 0; i < message.length(); i++) {
            String code = Integer.toHexString(message.charAt(i));
            if (code.length() == 1) {
                code = "000" + code;
            }
            else if (code.length() == 2) {
                code = "00" + code;
            }
            else if (code.length() == 3) {
                code = "0" + code;
            }
            str.append(code);
        }
        return str.toString();
    }
}
