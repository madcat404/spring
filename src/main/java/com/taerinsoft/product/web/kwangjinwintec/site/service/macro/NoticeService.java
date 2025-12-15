package com.taerinsoft.product.web.kwangjinwintec.site.service.macro;

import com.taerinsoft.product.web.kwangjinwintec.site.entity.notice.NoticeConfig;
import com.taerinsoft.product.web.kwangjinwintec.site.repository.notice.NoticeConfigRepository;
import com.taerinsoft.product.web.kwangjinwintec.site.utils.PaginationUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class NoticeService {
    private final Logger logger = LoggerFactory.getLogger(NoticeService.class);

    private final NoticeConfigRepository noticeConfigRepository;

    @Autowired
    public NoticeService(NoticeConfigRepository noticeConfigRepository) {
        this.noticeConfigRepository = noticeConfigRepository;
    }

    @Transactional
    public List<NoticeConfig> getList() {
        return noticeConfigRepository.getList();
    }

    @Transactional
    public PaginationUtil<NoticeConfig> getPagination(int pageNum) {
        List<NoticeConfig> noticeConfigList = noticeConfigRepository.listByPaging(
                pageNum,
                PaginationUtil.PAGE_DATA_SIZE_10
        );
        int totalCount = noticeConfigRepository.totalCount();
        int startNo = totalCount - (pageNum - 1) * PaginationUtil.PAGE_DATA_SIZE_10;
        for (NoticeConfig noticeConfig : noticeConfigList) {
            noticeConfig.setNo(startNo);
            startNo = startNo - 1;
        }
        return new PaginationUtil<>(
                noticeConfigList,
                pageNum,
                PaginationUtil.PAGE_DATA_SIZE_10,
                totalCount
        );

    }

    @Transactional
    public NoticeConfig getByIdx(long idx) {
        return noticeConfigRepository.getByIdx(idx);
    }

    @Transactional
    public List<Long> getIdxList(long idx) {
        List<Long> idxList = noticeConfigRepository.getIdxList();
        List<Long> resultList = new ArrayList<>();

        for ( int i = 0 ; i < idxList.size() ; i++ ){
            if ( i != 0 ){
                System.out.println(idxList.get(i-1));
                System.out.println(idxList.get(i));
                System.out.println(idxList.get(i+1));
            }

            if ( idxList.get(i) == idx ){
                if ( i == 0 ){
                    resultList.add(idxList.get(i+1));
                    resultList.add(0L);
                    break;
                }else if ( i+1 >= idxList.size() ){
                    resultList.add(0L);
                    resultList.add(idxList.get(i-1));
                    break;
                }else {
                    resultList.add(idxList.get(i+1));
                    resultList.add(idxList.get(i-1));
                    break;
                }
            }
        }
        return resultList;
    }

    @Transactional
    public long getByMaxIdx() {
        return noticeConfigRepository.getByMaxIdx();
    }


}
