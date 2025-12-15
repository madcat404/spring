package com.taerinsoft.product.web.kwangjinwintec.site.data.enums;


public enum DeviceType {
    pc("PC"),
    mobile("모바일");

    private final String value;

    DeviceType(String s) {
        value = s;
    }

    public String toString() {
        return this.value;
    }
}
