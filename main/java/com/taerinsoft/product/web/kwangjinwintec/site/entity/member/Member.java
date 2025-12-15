package com.taerinsoft.product.web.kwangjinwintec.site.entity.member;

import com.taerinsoft.product.web.kwangjinwintec.site.data.enums.MemberType;
import com.taerinsoft.product.web.kwangjinwintec.site.data.request.MemberRegisterRequest;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "member")
@JsonIgnoreProperties
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idx")
    private long idx;

    @Column(name = "id", unique = true)
    private String id;

    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "type")
    @Enumerated(EnumType.STRING)
    private MemberType type;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "mobile")
    private String mobile;

    @Column(name = "join_datetime")
    private Date joinDateTime;

    @Column(name = "login_datetime")
    private Date loginDateTime;

    @Column(name = "memo")
    private String memo;

    @Column(name = "update_datetime")
    private Date updateDateTime;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "member")
    private Set<MemberRole> roles = new HashSet<>();

    public Member() {
    }

    public Member(MemberRegisterRequest request, String ip) {
        this.id = request.getId();
        this.email = request.getEmail();
        this.password = request.getPassword();
        this.mobile = request.getMobile();
        init();
    }

    private void init() {
        this.enabled = true;
        this.type = MemberType.customer;
        this.joinDateTime = new Date();
        this.memo = "";
        this.updateDateTime = new Date();
    }

    public long getIdx() {
        return idx;
    }

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public MemberType getType() {
        return type;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public String getMobile() {
        return mobile;
    }

    public Date getJoinDateTime() {
        return joinDateTime;
    }

    public Date getLoginDateTime() {
        return loginDateTime;
    }

    public void setLoginDateTime(Date loginDateTime) {
        this.loginDateTime = loginDateTime;
    }

    public String getMemo() {
        return memo;
    }

    public Date getUpdateDateTime() {
        return updateDateTime;
    }

    public Set<MemberRole> getRoles() {
        return roles;
    }
}
