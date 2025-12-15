package com.taerinsoft.product.web.kwangjinwintec.site.service.member;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.member.MemberRepository;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.member.MemberRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberService {
    private final MemberRepository memberRepository;

    private final MemberRoleRepository memberRoleRepository;

    @Autowired
    public MemberService(MemberRepository memberRepository, MemberRoleRepository memberRoleRepository) {
        this.memberRepository = memberRepository;
        this.memberRoleRepository = memberRoleRepository;
    }

    @Transactional
    public Member findById(String id) {
        return memberRepository.findById(id);
    }

    @Transactional
    public void saveOrUpdate(Member member) {
        memberRepository.saveOrUpdate(member);
    }

}
