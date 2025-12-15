package com.taerinsoft.product.web.kwangjinwintec.site.utils;

import java.util.List;

public class PaginationUtil<T> {
    public final static int DEFAULT_PAGE_NUM = 1;

    public final static int PAGE_DATA_SIZE_50 = 50;

    public final static int PAGE_DATA_SIZE_30 = 30;

    public final static int PAGE_DATA_SIZE_15 = 15;

    public final static int PAGE_DATA_SIZE_10 = 10;

    private final static int DEFAULT_PAGE_NUM_SIZE = 10;

    private List<T> list;

    private Integer pageNum;

    private Integer totalDataSize;

    private Integer maxPageNum;

    private boolean next;

    private boolean previous;

    private int startPageNum;

    private int endPageNum;

    public PaginationUtil(List<T> list, Integer pageNum, Integer pageDataSize, Integer totalDataSize) {
        this.list = list;
        this.pageNum = pageNum == null || pageNum < 1 ? DEFAULT_PAGE_NUM : pageNum;
        this.totalDataSize = totalDataSize;
        this.maxPageNum = totalDataSize / pageDataSize;

        if (totalDataSize % pageDataSize > 0) {
            maxPageNum += 1;
        }

        int tempPageNum = this.pageNum % DEFAULT_PAGE_NUM_SIZE == 0 ? this.pageNum - 1 : this.pageNum;

        this.next = tempPageNum / DEFAULT_PAGE_NUM_SIZE < maxPageNum / DEFAULT_PAGE_NUM_SIZE;
        this.previous = tempPageNum / DEFAULT_PAGE_NUM_SIZE > 0;

        this.startPageNum = (tempPageNum / DEFAULT_PAGE_NUM_SIZE) * 10 + 1;
        int tempEndPageNum = (tempPageNum / DEFAULT_PAGE_NUM_SIZE) * 10 + DEFAULT_PAGE_NUM_SIZE;
        this.endPageNum = tempEndPageNum > maxPageNum ? maxPageNum : tempEndPageNum;
        if (this.endPageNum < 1) {
            this.endPageNum = 1;
        }
    }

    public List<T> getList() {
        return list;
    }

    public Integer getPageNum() {
        return pageNum;
    }

    public Integer getTotalDataSize() {
        return totalDataSize;
    }

    public Integer getMaxPageNum() {
        return maxPageNum;
    }

    public boolean isNext() {
        return next;
    }

    public boolean isPrevious() {
        return previous;
    }

    public int getStartPageNum() {
        return startPageNum;
    }

    public int getEndPageNum() {
        return endPageNum;
    }
}