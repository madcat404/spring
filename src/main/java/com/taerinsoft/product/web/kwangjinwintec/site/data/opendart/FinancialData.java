package com.taerinsoft.product.web.kwangjinwintec.site.data.opendart;

public class FinancialData {

    // CFS: 연결, OFS: 개별
    private String types;

    // year: 연도
    private String years;

    // 매출
    private String amount;

    // 영업이익(손실)
    private String salesLoss;

    // 당기순이익(손실)
    private String currentIncome;

    // 유동자산
    private String currentAssets;

    // 비유동자산
    private String nonCurrentAssets;

    // 자산총계
    private String totalAssets;

    // 유동부채
    private String currentDebt;

    // 비유동부채
    private String nonCurrentDebt;

    // 부채총계
    private String totalDebt;

    // 자본금
    private String capital;

    // 이익잉여금(결손금)
    private String profitsLoss;

    // 자본잉여금
    private String profits;

    // 자본총계
    private String totalCapital;

    public FinancialData(String type, String years) {
        this.types = type;
        this.years = years;
    }

    // 비지배지분
    private String nonControllingInterest;

    // 기초자본
    private String basicCapital;

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public String getYears() {
        return years;
    }

    public void setYears(String years) {
        this.years = years;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) { this.amount = amount; }

    public String getSalesLoss() {
        return salesLoss;
    }

    public void setSalesLoss(String salesLoss) {
        this.salesLoss = salesLoss;
    }

    public String getCurrentIncome() {
        return currentIncome;
    }

    public void setCurrentIncome(String currentIncome) {
        this.currentIncome = currentIncome;
    }

    public String getCurrentAssets() {
        return currentAssets;
    }

    public void setCurrentAssets(String currentAssets) {
        this.currentAssets = currentAssets;
    }

    public String getNonCurrentAssets() {
        return nonCurrentAssets;
    }

    public void setNonCurrentAssets(String nonCurrentAssets) {
        this.nonCurrentAssets = nonCurrentAssets;
    }

    public String getTotalAssets() {
        return totalAssets;
    }

    public void setTotalAssets(String totalAssets) {
        this.totalAssets = totalAssets;
    }

    public String getCurrentDebt() {
        return currentDebt;
    }

    public void setCurrentDebt(String currentDebt) {
        this.currentDebt = currentDebt;
    }

    public String getNonCurrentDebt() {
        return nonCurrentDebt;
    }

    public void setNonCurrentDebt(String nonCurrentDebt) {
        this.nonCurrentDebt = nonCurrentDebt;
    }

    public String getTotalDebt() {
        return totalDebt;
    }

    public void setTotalDebt(String totalDebt) {
        this.totalDebt = totalDebt;
    }

    public String getCapital() {
        return capital;
    }

    public void setCapital(String capital) {
        this.capital = capital;
    }

    public String getProfitsLoss() {
        return profitsLoss;
    }

    public void setProfitsLoss(String profitsLoss) {
        this.profitsLoss = profitsLoss;
    }

    public String getProfits() {
        return profits;
    }

    public void setProfits(String profits) {
        this.profits = profits;
    }

    public String getTotalCapital() {
        return totalCapital;
    }

    public void setTotalCapital(String totalCapital) {
        this.totalCapital = totalCapital;
    }

    public String getNonControllingInterest() {
        return nonControllingInterest;
    }

    public void setNonControllingInterest(String nonControllingInterest) {
        this.nonControllingInterest = nonControllingInterest;
    }

    public String getBasicCapital() {
        return basicCapital;
    }

    public void setBasicCapital(String basicCapital) {
        this.basicCapital = basicCapital;
    }
}
