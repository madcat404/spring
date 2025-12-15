package com.taerinsoft.product.web.kwangjinwintec.site.service.stock;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.stock.StockInfo;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.stock.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class StockInfoReadService {

    private StockRepository stockRepository;

    @Autowired
    public StockInfoReadService(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    @Transactional
    public StockInfo currentVal(){

        return stockRepository.getCurrentVal(stockRepository.getMaxNo());
    }

    @Transactional
    public StockInfo previousVal(){

        int no = 0;
        String maxSortingDate = "";

        maxSortingDate = stockRepository.getMaxSortingDate();
        no = stockRepository.getPreviousMaxNo(maxSortingDate);

        return stockRepository.getClosingPrice(no);
    }

    @Transactional
    public int maxNo(){ return stockRepository.getMaxNo(); }
}
