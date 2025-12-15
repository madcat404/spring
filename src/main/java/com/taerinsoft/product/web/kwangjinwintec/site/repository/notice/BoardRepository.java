package com.taerinsoft.product.web.kwangjinwintec.site.repository.notice;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.notice.NoticeConfig;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;

import java.util.List;

import static org.hibernate.criterion.Order.desc;
import static org.hibernate.criterion.Restrictions.eq;

public class BoardRepository extends CommonRepository<NoticeConfig>  {

    public BoardRepository() {
        super(NoticeConfig.class);
    }


    @SuppressWarnings("unchecked")
    public List<NoticeConfig> getListByMemberId(String memberId) {
        return createDefaultCriteria()
                .add(
                        eq("memberId", memberId)
                )
                .addOrder(
                        desc("idx")
                )
                .list();
    }

    public NoticeConfig getById(String idx) {
        return (NoticeConfig) createDefaultCriteria()
                .add(
                        eq("idx", idx)
                )
                .uniqueResult();
    }

}
