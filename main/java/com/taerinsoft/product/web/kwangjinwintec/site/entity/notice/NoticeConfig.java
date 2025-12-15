package com.taerinsoft.product.web.kwangjinwintec.site.entity.notice;

import com.taerinsoft.product.web.kwangjinwintec.site.data.request.NoticeConfigRequest;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "notice_board")
public class NoticeConfig {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idx")
    private long idx;

//    @ManyToOne(fetch = FetchType.LAZY)
    @Column(name = "member_id")
    private String memberId;

    @Column(name = "title")
    private String title;

    @Column(name = "subject")
    private String subject;

    @Column(name = "img_path")
    private String imgPath;

    @Column(name = "register_datetime")
    private Date registerDatetime;

    @Column(name = "update_datetime")
    private Date updateDatetime;

    @Transient
    private int no;

    public NoticeConfig() {
        init();
    }

    public void init() {
        this.registerDatetime = new Date();
        this.updateDatetime = new Date();
    }

    public long getIdx() {
        return idx;
    }

    public void setIdx(long idx) {
        this.idx = idx;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTeleTwostepPassword() {
        return subject;
    }

    public void setTeleTwostepPassword(String subject) {
        this.subject = subject;
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

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public void updateConfig(NoticeConfigRequest request) {

        this.memberId = request.getSender();
        this.updateDatetime = new Date();
        this.title = request.getTitle();
        this.subject = request.getSubject();
        this.imgPath = request.getImgPath();
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }
}
