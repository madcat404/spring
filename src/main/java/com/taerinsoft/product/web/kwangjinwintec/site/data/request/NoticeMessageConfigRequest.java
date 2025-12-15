package com.taerinsoft.product.web.kwangjinwintec.site.data.request;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties
public class NoticeMessageConfigRequest {

    private long idx;

    private String sender;

    private String chatTitle;

    private String contents;

    private int limitTime;

    private int limitCount;

    private int startIdle;

    private long  chatId;

    private boolean imgEnabled;

    public long getIdx() {
        return idx;
    }

    public void setIdx(long idx) {
        this.idx = idx;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getChatTitle() {
        return chatTitle;
    }

    public void setChatTitle(String chatTitle) {
        this.chatTitle = chatTitle;
    }

    public int getLimitTime() {
        return limitTime;
    }

    public void setLimitTime(int limitTime) {
        this.limitTime = limitTime;
    }

    public int getLimitCount() {
        return limitCount;
    }

    public void setLimitCount(int limitCount) {
        this.limitCount = limitCount;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public int getStartIdle() {
        return startIdle;
    }

    public void setStartIdle(int startIdle) {
        this.startIdle = startIdle;
    }

    public long getChatId() {
        return chatId;
    }

    public void setChatId(long chatId) {
        this.chatId = chatId;
    }

    public boolean isImgEnabled() {
        return imgEnabled;
    }

    public void setImgEnabled(boolean imgEnabled) {
        this.imgEnabled = imgEnabled;
    }
}
