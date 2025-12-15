package com.taerinsoft.product.web.kwangjinwintec.site.service.member;

import com.taerinsoft.product.web.kwangjinwintec.site.data.request.MemberRegisterRequest;
import com.taerinsoft.product.web.kwangjinwintec.site.data.response.RestResponse;
import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.MemberRole;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.member.MemberRepository;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.member.MemberRoleRepository;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberRegisterService {
    private final MemberRepository memberRepository;

    private final MemberRoleRepository memberRoleRepository;

    @Autowired
    public MemberRegisterService(MemberRepository memberRepository, MemberRoleRepository memberRoleRepository) {
        this.memberRepository = memberRepository;
        this.memberRoleRepository = memberRoleRepository;
    }

    @Transactional
    public RestResponse execute(MemberRegisterRequest request, String requestIp) {
        try {
            if (StringUtils.isEmpty(request.getId()) || memberRepository.findById(request.getId()) != null) {
                return RestResponse.error("중복되거나 사용할 수 없는 아이디 입니다.");
            }

            if (StringUtils.isEmpty(request.getEmail()) || memberRepository.findByEmail(request.getEmail()) != null) {
                return RestResponse.error("중복되거나 사용할 수 없는 이메일 입니다.");
            }

            if (StringUtils.isEmpty(request.getMobile()) || memberRepository.findByMobile(request.getMobile()) != null) {
                return RestResponse.error("중복되거나 사용할 수 없는 전화번호 입니다.");
            }

            if (StringUtils.isEmpty(request.getPassword())) {
                return RestResponse.error("입력하신 비밀번호를 확인하세요.");
            }

            if (StringUtils.isEmpty(request.getJoinCode())) {
                return RestResponse.error("입력하신 추천코드를 확인하세요.");
            }

            Member member = new Member(request, requestIp);

            memberRepository.save(member);
            memberRoleRepository.save(new MemberRole(member));
            return RestResponse.SuccessNoMessage;
        } catch (Exception e) {
            e.printStackTrace();
            return RestResponse.error(e.toString());
        }
    }
}
