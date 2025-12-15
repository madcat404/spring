package com.taerinsoft.product.web.kwangjinwintec.site.data.opendart;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DisclosureInfo {

    @JsonProperty(value = "corp_code")
    private String corpCode;

    @JsonProperty(value = "corp_name")
    private String corpName;

    @JsonProperty(value = "stock_code")
    private String stockCode;

    @JsonProperty(value = "corp_cls")
    private String corpCls;

    @JsonProperty(value = "report_nm")
    private String reportNM;

    @JsonProperty(value = "rcept_no")
    private String rceptNO;

    @JsonProperty(value = "flr_nm")
    private String flrNM;

    @JsonProperty(value = "rcept_dt")
    private String rceptDT;

    @JsonProperty(value = "rm")
    private String rm;

    public String getCorpCode() {
        return corpCode;
    }

    public void setCorpCode(String corpCode) {
        this.corpCode = corpCode;
    }

    public String getCorpName() {
        return corpName;
    }

    public void setCorpName(String corpName) {
        this.corpName = corpName;
    }

    public String getStockCode() {
        return stockCode;
    }

    public void setStockCode(String stockCode) {
        this.stockCode = stockCode;
    }

    public String getCorpCls() {
        return corpCls;
    }

    public void setCorpCls(String corpCls) {
        this.corpCls = corpCls;
    }

    public String getReportNM() {
        return reportNM;
    }

    public void setReportNM(String reportNM) {
        this.reportNM = reportNM;
    }

    public String getRceptNO() {
        return rceptNO;
    }

    public void setRceptNO(String rceptNO) {
        this.rceptNO = rceptNO;
    }

    public String getFlrNM() {
        return flrNM;
    }

    public void setFlrNM(String flrNM) {
        this.flrNM = flrNM;
    }

    public String getRceptDT() {
        return rceptDT;
    }

    public void setRceptDT(String rceptDT) {
        this.rceptDT = rceptDT;
    }

    public String getRm() {
        return rm;
    }

    public void setRm(String rm) {
        this.rm = rm;
    }
}
