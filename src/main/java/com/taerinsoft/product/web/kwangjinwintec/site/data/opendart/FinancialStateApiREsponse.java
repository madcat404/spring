package com.taerinsoft.product.web.kwangjinwintec.site.data.opendart;

import java.util.List;

public class FinancialStateApiREsponse {

    private String status;

    private String message;

    private List<FinancialStateResponse> list;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<FinancialStateResponse> getList() {
        return list;
    }

    public void setList(List<FinancialStateResponse> list) {
        this.list = list;
    }
}
