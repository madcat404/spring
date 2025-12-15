package com.taerinsoft.product.web.kwangjinwintec.site.data.enums;

public enum MemberType {
    all("전체"),
    test("테스트"),
    customer("회원"),
    manager("매니저");

    private final String value;

    MemberType(String s) {
        value = s;
    }

    public String toString() {
        return this.value;
    }
}
