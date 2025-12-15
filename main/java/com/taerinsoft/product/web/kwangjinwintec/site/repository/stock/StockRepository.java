package com.taerinsoft.product.web.kwangjinwintec.site.repository.stock;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.stock.StockInfo;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.CommonStockRepository;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;
import static org.hibernate.criterion.Order.desc;
import static org.hibernate.criterion.Restrictions.*;


@Repository
public class StockRepository extends CommonStockRepository<StockInfo> {

    public StockRepository() {
        super(StockInfo.class);
    }

    public StockInfo getCurrentVal(int no){
        return (StockInfo) createDefaultCriteria()
                .add(
                        eq("no", no)
                )
                .uniqueResult();
    }
    public StockInfo getClosingPrice(int no){
        return (StockInfo) createDefaultCriteria()
                .add(
                        eq("no", no)
                )
                .uniqueResult();
    }

    public int getMaxNo() {
        return (int) createDefaultCriteria()
                .setProjection(Projections.max(("no")))
                .uniqueResult();
    }

    public String getMaxSortingDate(){
        return (String) createDefaultCriteria()
                .setProjection(Projections.max("SORTING_DATE"))
                .uniqueResult();
    }

    public int getPreviousMaxNo(String sorting_date){
        return (int) createDefaultCriteria()
                .add(
                        ne("SORTING_DATE", sorting_date)
                )
                .setProjection(Projections.max("no"))
                .uniqueResult();
    }

}