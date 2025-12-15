package com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.service;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.MemberRole;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.member.MemberRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class SiteUserDetailService implements UserDetailsService {
    private Logger logger = LoggerFactory.getLogger(SiteUserDetailService.class);

    private final MemberRepository memberRepository;

    @Autowired
    public SiteUserDetailService(MemberRepository memberRepository) {
        this.memberRepository = memberRepository;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        if (id.contains(" ")) {
            return null;
        }
        Member member = memberRepository.findById(id);
        if (member != null) {
            List<GrantedAuthority> authorities = buildUserAuthority(member.getRoles());
            return buildUserForAuthentication(member, authorities);
        }
        else {
            logger.error("#[SiteUserDetailService.loadUserByUsername] Member Id Not Found - id=" + id);
            return null;
        }
    }

    private User buildUserForAuthentication(Member member, List<GrantedAuthority> authorities) {
        return new User(
                member.getId(),
                member.getPassword(),
                member.isEnabled(),
                true,
                true,
                true,
                authorities
        );
    }

    private List<GrantedAuthority> buildUserAuthority(Set<MemberRole> roles) {
        Set<GrantedAuthority> setAuths = new HashSet<>();

        // Build user's authorities
        setAuths.addAll(
                roles.stream().map(
                        role -> new SimpleGrantedAuthority(role.getRole())).collect(Collectors.toList()
                )
        );

        return new ArrayList<>(setAuths);
    }
}