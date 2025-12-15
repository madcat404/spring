package com.taerinsoft.product.web.kwangjinwintec.site.entity.log;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.data.enums.DeviceType;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "member_login_log")
public class MemberLoginLog {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idx")
    private Long idx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_idx")
    private Member member;

    @Column(name = "ip")
    private String ip;

    @Column(name = "domain")
    private String domain;

    @Column(name = "device")
    @Enumerated(EnumType.STRING)
    private DeviceType device;

    @Column(name = "nation_code")
    private String nationCode;

    @Column(name = "login_datetime")
    private Date loginDateTime;

    public MemberLoginLog() {
    }

    public MemberLoginLog(Member member, String ip, String domain, DeviceType device, String nationCode) {
        this.member = member;
        this.ip = ip;
        this.domain = domain;
        this.device = device;
        this.nationCode = nationCode;
        this.loginDateTime = new Date();
    }

    public Long getIdx() {
        return idx;
    }

    public Member getMember() {
        return member;
    }

    public String getIp() {
        return ip;
    }

    public String getDomain() {
        return domain;
    }

    public DeviceType getDevice() {
        return device;
    }

    public String getNationCode() {
        return nationCode;
    }

    public Date getLoginDateTime() {
        return loginDateTime;
    }
}