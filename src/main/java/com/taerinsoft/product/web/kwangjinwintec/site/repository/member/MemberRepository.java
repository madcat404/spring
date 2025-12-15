package com.taerinsoft.product.web.kwangjinwintec.site.repository.member;

import com.taerinsoft.product.web.kwangjinwintec.site.data.enums.MemberType;
import com.taerinsoft.product.web.kwangjinwintec.site.entity.member.Member;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.hibernate.criterion.Order.desc;
import static org.hibernate.criterion.Restrictions.and;
import static org.hibernate.criterion.Restrictions.eq;

@Repository
public class MemberRepository extends CommonRepository<Member> {
    public MemberRepository() {
        super(Member.class);
    }

    public Member findByIdx(Long idx) {
        return (Member) createDefaultCriteria()
                .add(
                        eq("idx", idx)
                )
                .uniqueResult();
    }

    public Member findByAuthKey(String authKey) {
        return (Member) createDefaultCriteria()
                .add(
                        eq("authKey", authKey)
                )
                .uniqueResult();
    }

    public Member findById(String id) {
        return (Member) createDefaultCriteria()
                .add(
                        eq("id", id)
                )
                .uniqueResult();
    }

    public Member findByEmail(String email) {
        return (Member) createDefaultCriteria()
                .add(
                        eq("email", email)
                )
                .uniqueResult();
    }

    public Member findByMobile(String mobile) {
        return (Member) createDefaultCriteria()
                .add(
                        eq("mobile", mobile)
                )
                .uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public List<Member> listByRecommenderId(String recommenderId) {
        return createDefaultCriteria()
                .add(
                        and(
                                eq("recommenderId", recommenderId),
                                eq("type", MemberType.customer)
                        )
                )
                .addOrder(
                        desc("idx")
                )
                .list();
    }

    public Member findByIdxAndRecommenderId(long memberIdx, String recommenderId) {
        return (Member) createDefaultCriteria()
                .add(
                        and(
                                eq("recommenderId", recommenderId),
                                eq("idx", memberIdx)
                        )
                )
                .uniqueResult();
    }

    public Member findByIdAndAuthKey(String id, String authKey) {
        return (Member) createDefaultCriteria()
                .add(
                        and(
                                eq("id", id),
                                eq("authKey", authKey)
                        )
                )
                .uniqueResult();
    }
}
