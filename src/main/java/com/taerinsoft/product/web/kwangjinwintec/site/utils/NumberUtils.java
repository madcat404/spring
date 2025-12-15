package com.taerinsoft.product.web.kwangjinwintec.site.utils;

import java.text.DecimalFormat;

public class NumberUtils {
    private static DecimalFormat formatter = new DecimalFormat("#,###");

    public static String getMoneyFormat(int value) {
        return formatter.format(value);
    }

    public static float getOdds(float odds) {
        if (odds == 0) {
            return 0;
        }
        return (int) (odds * 100f) / 100f;
    }
}
