package com.taerinsoft.product.web.kwangjinwintec.site.repository.log;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.log.MemberLoginLog;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;
import org.springframework.stereotype.Repository;

@Repository
public class MemberLoginLogRepository extends CommonRepository<MemberLoginLog> {
    public MemberLoginLogRepository() {
        super(MemberLoginLog.class);
    }
}
