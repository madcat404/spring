package com.taerinsoft.product.web.kwangjinwintec.site.repository.member;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.MemberRole;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRoleRepository extends CommonRepository<MemberRole> {
    public MemberRoleRepository() {
        super(MemberRole.class);
    }
}
