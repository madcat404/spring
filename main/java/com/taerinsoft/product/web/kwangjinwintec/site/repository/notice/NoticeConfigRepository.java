package com.taerinsoft.product.web.kwangjinwintec.site.repository.notice;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.notice.NoticeConfig;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;
import org.hibernate.Criteria;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.hibernate.criterion.Order.desc;
import static org.hibernate.criterion.Projections.rowCount;
import static org.hibernate.criterion.Restrictions.eq;

@Repository
public class NoticeConfigRepository extends CommonRepository<NoticeConfig> {
    public NoticeConfigRepository() {
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

    @SuppressWarnings("unchecked")
    public List<NoticeConfig> getList() {
        return createDefaultCriteria()
                .addOrder(
                        desc("idx")
                )
                .list();
    }

    public List<Long> getIdxList() {
        return createDefaultCriteria()
                .setProjection(Projections.id().as("idx"))
                .addOrder(
                        desc("idx")
                )
                .list();
    }

    @SuppressWarnings("unchecked")
    public NoticeConfig getByIdx(long idx) {
        return (NoticeConfig) createDefaultCriteria()
                .add(
                        eq("idx", idx)
                )
                .uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public long getByMaxIdx() {
        return (long) createDefaultCriteria()
                .setProjection(Projections.max(("idx")))
                .uniqueResult();
    }

    public List<NoticeConfig> listByPaging(int pageNum, int pageDataSize) {
//        Criteria criteria = createDefaultCriteria();
        return createDefaultCriteria()
                .setFirstResult(((pageNum - 1) * pageDataSize))
                .setMaxResults(pageDataSize)
                .list();
    }

    public int totalCount() {
        Criteria criteria= createDefaultCriteria();
        Long count = (Long) criteria
                .setProjection(
                        rowCount()
                )
                .uniqueResult();
        return count != null ? count.intValue() : 0;
    }
}
