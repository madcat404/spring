package com.taerinsoft.product.web.kwangjinwintec.site.entity.notice;

import com.taerinsoft.product.web.kwangjinwintec.site.data.request.NoticeMessageConfigRequest;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "notice_message_config")
public class NoticeMessageConfig {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idx")
    private long idx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "notice_config_id")
    private NoticeConfig noticeConfig;

    @Column(name = "sender")
    private String sender;

    @Column(name = "contents")
    private String contents;

    @Column(name = "message_start_idle")
    private int messageStartIdle;

    @Column(name = "chat_id")
    private long chatId;

    @Column(name = "chat_title")
    private String chatTitle;

    @Column(name = "chat_time_limit")
    private int chatTimeLimit;

    @Column(name = "chat_count_limit")
    private int chatCountLimit;

    @Column(name = "send_count")
    private int sendCount;

    @Column(name = "total_send_count")
    private int totalSendCount;

    @Column(name = "register_datetime")
    private Date registerDatetime;

    @Column(name = "update_datetime")
    private Date updateDatetime;

    @Column(name = "enable")
    private boolean enabled;

    @Column(name = "img_enable")
    private boolean imgEnabled;

    public NoticeMessageConfig() {
        init();
    }

    public void init() {
        this.enabled = false;
        this.sendCount = 0;
        this.totalSendCount = 0;
        this.messageStartIdle = 0;
        this.registerDatetime = new Date();
        this.updateDatetime = new Date();
    }

    public long getIdx() {
        return idx;
    }

    public void setIdx(long idx) {
        this.idx = idx;
    }

    public Date getRegisterDatetime() {
        return registerDatetime;
    }

    public void setRegisterDatetime(Date registerDatetime) {
        this.registerDatetime = registerDatetime;
    }

    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    public NoticeConfig getMacroConfig() {
        return noticeConfig;
    }

    public void setMacroConfig(NoticeConfig noticeConfig) {
        this.noticeConfig = noticeConfig;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getChatTitle() {
        return chatTitle;
    }

    public void setChatTitle(String chatTitle) {
        this.chatTitle = chatTitle;
    }

    public int getChatTimeLimit() {
        return chatTimeLimit;
    }

    public void setChatTimeLimit(int chatTimeLimit) {
        this.chatTimeLimit = chatTimeLimit;
    }

    public int getChatCountLimit() {
        return chatCountLimit;
    }

    public void setChatCountLimit(int chatCountLimit) {
        this.chatCountLimit = chatCountLimit;
    }

    public int getSendCount() {
        return sendCount;
    }

    public void setSendCount(int sendCount) {
        this.sendCount = sendCount;
    }

    public int getTotalSendCount() {
        return totalSendCount;
    }

    public void setTotalSendCount(int totalSendCount) {
        this.totalSendCount = totalSendCount;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public void updateConfig(NoticeMessageConfigRequest request) {
        this.chatTitle = request.getChatTitle();
        this.contents = request.getContents();
        this.chatTimeLimit = request.getLimitTime();
        this.chatCountLimit = request.getLimitCount();
        this.sender = request.getSender();
        this.messageStartIdle = request.getStartIdle();
        this.updateDatetime = new Date();
        this.chatId = request.getChatId();
        this.imgEnabled = request.isImgEnabled();
    }

    public int getMessageStartIdle() {
        return messageStartIdle;
    }

    public void setMessageStartIdle(int messageStartIdle) {
        this.messageStartIdle = messageStartIdle;
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
