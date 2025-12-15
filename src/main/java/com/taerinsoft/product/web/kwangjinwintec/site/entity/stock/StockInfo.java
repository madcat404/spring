package com.taerinsoft.product.web.kwangjinwintec.site.entity.stock;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STOCK")
@JsonIgnoreProperties
public class StockInfo {

    @Id
    @Column(name = "NO")
    private int no;

    @Column(name = "VAL")
    private int VAL;

    @Column(name = "DT")
    private String DT;

    @Column(name = "SORTING_DATE")
    private String SORTING_DATE;


    public int getVAL() {
        return VAL;
    }

    public void setVAL(int VAL) {
        this.VAL = VAL;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getDT() {
        return DT;
    }

    public void setDT(String DT) {
        this.DT = DT;
    }

    public String getSORTING_DATE() {
        return SORTING_DATE;
    }

    public void setSORTING_DATE(String SORTING_DATE) {
        this.SORTING_DATE = SORTING_DATE;
    }
}
