package com.taerinsoft.product.web.kwangjinwintec.site.data.opendart;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class DisclosureInfoResponse {

    @JsonProperty(value = "status")
    private String status;

    @JsonProperty(value = "message")
    private String message;

    @JsonProperty(value = "page_no")
    private int pageNo;

    @JsonProperty(value = "page_count")
    private int pageCount;

    @JsonProperty(value = "total_count")
    private int totalCount;

    @JsonProperty(value = "total_page")
    private int totalPage;

    @JsonProperty(value = "list")
    private List<DisclosureInfo> disclosureInfoList;


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

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<DisclosureInfo> getDisclosureInfoList() {
        return disclosureInfoList;
    }

    public void setDisclosureInfoList(List<DisclosureInfo> disclosureInfoList) {
        this.disclosureInfoList = disclosureInfoList;
    }
}
