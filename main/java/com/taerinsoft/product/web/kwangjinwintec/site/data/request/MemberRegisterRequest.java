package com.taerinsoft.product.web.kwangjinwintec.site.data.request;

public class MemberRegisterRequest extends AbstractRequest {
    private String id;

    private String email;

    private String password;

    private String mobile;

    private String joinCode;

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getMobile() {
        return mobile;
    }

    public String getJoinCode() {
        return joinCode;
    }
}
