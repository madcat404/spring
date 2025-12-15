package com.taerinsoft.product.web.kwangjinwintec.site.data.response;

public class RestResponse {
    private String status;

    private String message;

    private String redirectUrl;

    protected RestResponse(String status, String message) {
        this.status = status;
        this.message = message;
    }

    public static RestResponse SuccessNoMessage = new RestResponse("SUCCESS", "");

    public static RestResponse error(String message) {
        return new RestResponse("ERROR", message);
    }

    public static RestResponse success(String message) {
        return new RestResponse("SUCCESS", message);
    }

    public static RestResponse redirect(String redirectUrl) {
        RestResponse rr = new RestResponse("SUCCESS", "");
        rr.setRedirectUrl(redirectUrl);
        return rr;
    }

    public String getMessage() {
        return message;
    }

    public String getStatus() {
        return status;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }
}
