package com.taerinsoft.product.web.kwangjinwintec.site.entity.member;

import com.taerinsoft.product.web.kwangjinwintec.site.data.StaticConstants;

import javax.persistence.*;

@Entity
@Table(name ="member_role")
public class MemberRole {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idx")
    private Long idx;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_idx")
    private Member member;

    @Column(name = "role")
    private String role;

    public MemberRole() {}

    public MemberRole(Member member) {
        this.member = member;
        this.role = StaticConstants.memberRoleName;
    }

    public Long getIdx() {
        return idx;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
