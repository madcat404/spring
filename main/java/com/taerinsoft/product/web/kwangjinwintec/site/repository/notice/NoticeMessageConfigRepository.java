package com.taerinsoft.product.web.kwangjinwintec.site.repository.notice;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.notice.NoticeMessageConfig;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.hibernate.criterion.Order.desc;
import static org.hibernate.criterion.Restrictions.eq;

@Repository
public class NoticeMessageConfigRepository extends CommonRepository<NoticeMessageConfig> {
    public NoticeMessageConfigRepository() {
        super(NoticeMessageConfig.class);
    }

    @SuppressWarnings("unchecked")
    public List<NoticeMessageConfig> getListByMemberId(String memberId) {
        return createDefaultCriteria()
                .createAlias("macroConfig", "macroConfig")
                .add(
                        eq("sender", memberId)
                )
                .addOrder(
                        desc("idx")
                )
                .list();
    }

    @SuppressWarnings("unchecked")
    public List<NoticeMessageConfig> getListByMemberIdOrderIdx(String memberId) {
        return createDefaultCriteria()
                .createAlias("macroConfig", "macroConfig")
                .add(
                        eq("sender", memberId)
                )
                .list();
    }

    @SuppressWarnings("unchecked")
    public NoticeMessageConfig getByIdx(long idx) {
        return (NoticeMessageConfig) createDefaultCriteria()
                .createAlias("macroConfig", "macroConfig")
                .add(
                        eq("idx", idx)
                )
                .uniqueResult();
    }
}
