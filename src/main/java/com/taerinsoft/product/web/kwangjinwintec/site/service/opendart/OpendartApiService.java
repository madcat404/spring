package com.taerinsoft.product.web.kwangjinwintec.site.service.opendart;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.taerinsoft.product.web.kwangjinwintec.site.data.opendart.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestOperations;

import java.text.NumberFormat;
import java.util.*;

@Service
public class OpendartApiService {

    // kg opendart apikey
//    private final static String crtfcKey = "1500e4043f15c98ca9217a83a41ea21dcbf7602c";
    private final static String crtfcKey = "f9f393f0fb6f2ddb5ec73d0e8f8800c5a56d143d";

    private final static String corpCode = "00365624";

    //제무재표 api url
    private final static String fnlttEndpointUrl = "https://opendart.fss.or.kr/api/fnlttSinglAcntAll.json?crtfc_key={crtfcKey}&corp_code={corpCode}&bsns_year={bsnsYear}&reprt_code={reprtCode}&fs_div={fsDiv}";

    //공시정보 endpoint url
    private final static String disclosureEndpointUrl = "https://opendart.fss.or.kr/api/list.json?crtfc_key={crtfcKey}&corp_code={corpCode}&bgn_de={bgnde}&sort={sort}&sort_mth={sortmth}";

    private final RestOperations restOperations;

    @Autowired
    public OpendartApiService(RestOperations restOperations) {
        this.restOperations = restOperations;
    }

    public ArrayList<FinancialStateResponse> requestFnlttApi(String types) {
        Calendar cal = new GregorianCalendar(Locale.KOREA);

        String targetUrl = fnlttEndpointUrl
                .replaceAll("\\{crtfcKey}", crtfcKey)
                .replaceAll("\\{corpCode}", corpCode)
                .replaceAll("\\{bsnsYear}", Integer.toString(cal.get(Calendar.YEAR)-1))
                .replaceAll("\\{reprtCode}", "11011")
                .replaceAll("\\{fsDiv}", types);

        try {
            return (ArrayList<FinancialStateResponse>) restOperations.getForObject(targetUrl, FinancialStateApiREsponse.class).getList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<FinancialData> getFinancialStatement (String apiType){
        ArrayList<FinancialData> resultList = new ArrayList<>();

//        ArrayList<FinancialStateResponse> apiCFSResList = requestFnlttApi("CFS"); //연결
//        ArrayList<FinancialStateResponse> apiOFSResList = requestFnlttApi("OFS"); //개별
        ArrayList<FinancialStateResponse> apiResList = requestFnlttApi(apiType);
        FinancialData financialData;

        if (apiResList != null && apiResList.size() > 0) {
            for (int idx = 0; idx < 3; idx ++) {
                financialData = new FinancialData(apiType, Integer.toString(Integer.parseInt(apiResList.get(0).getBsns_year())-idx));
    //            FinancialData financialData = new FinancialData("연결", NumberFormat.getInstance(Locale.US).format(Integer.parseInt(apiResList.get(0).getBsns_year())-idx));
    //            FinancialData financialData = new FinancialData("연결", Integer.toString(Integer.parseInt(apiCFSResList.get(0).getBsns_year())-idx));
    //            FinancialData financialData = new FinancialData("연결", NumberFormat.getInstance(Locale.US).format(Integer.parseInt(apiCFSResList.get(0).getBsns_year())-idx));
                resultList.add(financialData);
            }
        } else {
            return null;
        }
//        for (int idx = 0; idx < 3; idx ++) {
//            FinancialData financialData = new FinancialData("개별", Integer.toString(Integer.parseInt(apiOFSResList.get(0).getBsns_year())-idx));
//            FinancialData financialData = new FinancialData("개별", NumberFormat.getInstance(Locale.US).format(Integer.parseInt(apiOFSResList.get(0).getBsns_year())-idx));
//            resultList.add(financialData);
//        }

        for (FinancialStateResponse f : apiResList) {
            if ("영업이익(손실)".equals(f.getAccount_nm())) {
                resultList.get(0).setSalesLoss( f.getThstrm_amount() );
                resultList.get(1).setSalesLoss( f.getFrmtrm_amount() );
                resultList.get(2).setSalesLoss( f.getBfefrmtrm_amount() );
            } else if ("당기순이익(손실)".equals(f.getAccount_nm())) {
                resultList.get(0).setCurrentIncome( f.getThstrm_amount() );
                resultList.get(1).setCurrentIncome( f.getFrmtrm_amount() );
                resultList.get(2).setCurrentIncome( f.getBfefrmtrm_amount() );
            } else if ("매출액".equals(f.getAccount_nm())){
                resultList.get(0).setAmount( f.getThstrm_amount() );
                resultList.get(1).setAmount( f.getFrmtrm_amount() );
                resultList.get(2).setAmount( f.getBfefrmtrm_amount() );
            } else if ("유동자산".equals(f.getAccount_nm())){
                resultList.get(0).setCurrentAssets( f.getThstrm_amount() );
                resultList.get(1).setCurrentAssets( f.getFrmtrm_amount() );
                resultList.get(2).setCurrentAssets( f.getBfefrmtrm_amount() );
            } else if ("비유동자산".equals(f.getAccount_nm())){
                resultList.get(0).setNonCurrentAssets( f.getThstrm_amount() );
                resultList.get(1).setNonCurrentAssets( f.getFrmtrm_amount() );
                resultList.get(2).setNonCurrentAssets( f.getBfefrmtrm_amount() );
            } else if ("자산총계".equals(f.getAccount_nm())){
                resultList.get(0).setTotalAssets( f.getThstrm_amount() );
                resultList.get(1).setTotalAssets( f.getFrmtrm_amount() );
                resultList.get(2).setTotalAssets(f.getBfefrmtrm_amount());
            } else if ("유동부채".equals(f.getAccount_nm())){
                resultList.get(0).setCurrentDebt( f.getThstrm_amount() );
                resultList.get(1).setCurrentDebt( f.getFrmtrm_amount() );
                resultList.get(2).setCurrentDebt(f.getBfefrmtrm_amount());
            } else if ("비유동부채".equals(f.getAccount_nm())){
                resultList.get(0).setNonCurrentDebt( f.getThstrm_amount() );
                resultList.get(1).setNonCurrentDebt( f.getFrmtrm_amount() );
                resultList.get(2).setNonCurrentDebt(f.getBfefrmtrm_amount());
            } else if ("부채총계".equals(f.getAccount_nm())){
                resultList.get(0).setTotalDebt( f.getThstrm_amount() );
                resultList.get(1).setTotalDebt( f.getFrmtrm_amount() );
                resultList.get(2).setTotalDebt(f.getBfefrmtrm_amount());
            } else if ("자본총계".equals(f.getAccount_nm())){
                resultList.get(0).setCapital( f.getThstrm_amount() );
                resultList.get(1).setCapital( f.getFrmtrm_amount() );
                resultList.get(2).setCapital(f.getBfefrmtrm_amount());
            } else if ("이익잉여금(결손금)".equals(f.getAccount_nm())){
                resultList.get(0).setProfitsLoss( f.getThstrm_amount() );
                resultList.get(1).setProfitsLoss( f.getFrmtrm_amount() );
                resultList.get(2).setProfitsLoss(f.getBfefrmtrm_amount());
            } else if ("자본잉여금".equals(f.getAccount_nm())){
                resultList.get(1).setProfits( f.getThstrm_amount() );
                resultList.get(0).setProfits( f.getFrmtrm_amount() );
                resultList.get(2).setProfits(f.getBfefrmtrm_amount());
            } else if ("자본금".equals(f.getAccount_nm())){
                resultList.get(0).setTotalCapital( f.getThstrm_amount() );
                resultList.get(1).setTotalCapital( f.getFrmtrm_amount() );
                resultList.get(2).setTotalCapital( f.getBfefrmtrm_amount() );
            } else if ("비지배지분".equals(f.getAccount_nm())){
                resultList.get(0).setNonControllingInterest( f.getThstrm_amount() );
                resultList.get(1).setNonControllingInterest( f.getFrmtrm_amount() );
                resultList.get(2).setNonControllingInterest( f.getBfefrmtrm_amount() );
            } else if ("기초자본".equals(f.getAccount_nm())){
                resultList.get(0).setBasicCapital( f.getThstrm_amount() );
                resultList.get(1).setBasicCapital( f.getFrmtrm_amount() );
                resultList.get(2).setBasicCapital( f.getBfefrmtrm_amount() );
            } else if (null != f.getBsns_year()){
                resultList.get(0).setYears(f.getBsns_year());
                resultList.get(1).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 1));
                resultList.get(2).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 2));
            }
        }

//        for (FinancialStateResponse f : apiCFSResList) {
//            if ("영업이익(손실)".equals(f.getAccount_nm())) {
//                resultList.get(0).setSalesLoss( f.getThstrm_amount() );
//                resultList.get(1).setSalesLoss( f.getFrmtrm_amount() );
//                resultList.get(2).setSalesLoss( f.getBfefrmtrm_amount() );
//            } else if ("당기순이익(손실)".equals(f.getAccount_nm())) {
//                resultList.get(0).setCurrentIncome( f.getThstrm_amount() );
//                resultList.get(1).setCurrentIncome( f.getFrmtrm_amount() );
//                resultList.get(2).setCurrentIncome( f.getFrmtrm_amount() );
//            } else if ("매출".equals(f.getAccount_nm())){
//                resultList.get(0).setAmount( f.getThstrm_amount() );
//                resultList.get(1).setAmount( f.getFrmtrm_amount() );
//                resultList.get(2).setAmount( f.getBfefrmtrm_amount() );
//            } else if ("유동자산".equals(f.getAccount_nm())){
//                resultList.get(0).setCurrentAssets( f.getThstrm_amount() );
//                resultList.get(1).setCurrentAssets( f.getFrmtrm_amount() );
//                resultList.get(2).setCurrentAssets( f.getBfefrmtrm_amount() );
//            } else if ("비유동자산".equals(f.getAccount_nm())){
//                resultList.get(0).setNonCurrentAssets( f.getThstrm_amount() );
//                resultList.get(1).setNonCurrentAssets( f.getFrmtrm_amount() );
//                resultList.get(2).setNonCurrentAssets( f.getBfefrmtrm_amount() );
//            } else if ("자산총계".equals(f.getAccount_nm())){
//                resultList.get(0).setTotalAssets( f.getThstrm_amount() );
//                resultList.get(1).setTotalAssets( f.getFrmtrm_amount() );
//                resultList.get(2).setTotalAssets(f.getBfefrmtrm_amount());
//            } else if ("유동부채".equals(f.getAccount_nm())){
//                resultList.get(0).setCurrentDebt( f.getThstrm_amount() );
//                resultList.get(1).setCurrentDebt( f.getFrmtrm_amount() );
//                resultList.get(2).setCurrentDebt(f.getBfefrmtrm_amount());
//            } else if ("비유동부채".equals(f.getAccount_nm())){
//                resultList.get(0).setNonCurrentDebt( f.getThstrm_amount() );
//                resultList.get(1).setNonCurrentDebt( f.getFrmtrm_amount() );
//                resultList.get(2).setNonCurrentDebt(f.getBfefrmtrm_amount());
//            } else if ("부채총계".equals(f.getAccount_nm())){
//                resultList.get(0).setTotalDebt( f.getThstrm_amount() );
//                resultList.get(1).setTotalDebt( f.getFrmtrm_amount() );
//                resultList.get(2).setTotalDebt(f.getBfefrmtrm_amount());
//            } else if ("자본금".equals(f.getAccount_nm())){
//                resultList.get(0).setCapital( f.getThstrm_amount() );
//                resultList.get(1).setCapital( f.getFrmtrm_amount() );
//                resultList.get(2).setCapital(f.getBfefrmtrm_amount());
//            } else if ("이익잉여금(결손금)".equals(f.getAccount_nm())){
//                resultList.get(0).setProfitsLoss( f.getThstrm_amount() );
//                resultList.get(1).setProfitsLoss( f.getFrmtrm_amount() );
//                resultList.get(2).setProfitsLoss(f.getBfefrmtrm_amount());
//            } else if ("자본잉여금".equals(f.getAccount_nm())){
//                resultList.get(1).setProfits( f.getThstrm_amount() );
//                resultList.get(0).setProfits( f.getFrmtrm_amount() );
//                resultList.get(2).setProfits(f.getBfefrmtrm_amount());
//            } else if ("자본총계".equals(f.getAccount_nm())){
//                resultList.get(0).setTotalCapital( f.getThstrm_amount() );
//                resultList.get(1).setTotalCapital( f.getFrmtrm_amount() );
//                resultList.get(2).setTotalCapital( f.getBfefrmtrm_amount() );
//            } else if (null != f.getBsns_year()){
//                resultList.get(0).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 2));
//                resultList.get(1).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 1));
//                resultList.get(2).setYears(f.getBsns_year());
//            }
//        }

//        for (FinancialStateResponse f : apiOFSResList) {
//            if ("영업이익(손실)".equals(f.getAccount_nm())) {
//                resultList.get(3).setSalesLoss( f.getThstrm_amount() );
//                resultList.get(4).setSalesLoss( f.getFrmtrm_amount() );
//                resultList.get(5).setSalesLoss(f.getBfefrmtrm_amount());
//            } else if ("당기순이익(손실)".equals(f.getAccount_nm())) {
//                resultList.get(3).setCurrentIncome( f.getThstrm_amount() );
//                resultList.get(4).setCurrentIncome( f.getFrmtrm_amount() );
//                resultList.get(5).setCurrentIncome(f.getBfefrmtrm_amount());
//            } else if ("매출".equals(f.getAccount_nm())){
//                resultList.get(3).setAmount( f.getThstrm_amount() );
//                resultList.get(4).setAmount( f.getFrmtrm_amount() );
//                resultList.get(5).setAmount(f.getBfefrmtrm_amount());
//            } else if ("유동자산".equals(f.getAccount_nm())){
//                resultList.get(3).setCurrentAssets( f.getThstrm_amount() );
//                resultList.get(4).setCurrentAssets( f.getFrmtrm_amount() );
//                resultList.get(5).setCurrentAssets(f.getBfefrmtrm_amount());
//            } else if ("비유동자산".equals(f.getAccount_nm())){
//                resultList.get(3).setNonCurrentAssets( f.getThstrm_amount() );
//                resultList.get(4).setNonCurrentAssets( f.getFrmtrm_amount() );
//                resultList.get(5).setNonCurrentAssets(f.getBfefrmtrm_amount());
//            } else if ("자산총계".equals(f.getAccount_nm())){
//                resultList.get(3).setTotalAssets( f.getThstrm_amount() );
//                resultList.get(4).setTotalAssets( f.getFrmtrm_amount() );
//                resultList.get(5).setTotalAssets(f.getBfefrmtrm_amount());
//            } else if ("유동부채".equals(f.getAccount_nm())){
//                resultList.get(3).setCurrentDebt( f.getThstrm_amount() );
//                resultList.get(4).setCurrentDebt( f.getFrmtrm_amount() );
//                resultList.get(5).setCurrentDebt(f.getBfefrmtrm_amount());
//            } else if ("비유동부채".equals(f.getAccount_nm())){
//                resultList.get(3).setNonCurrentDebt( f.getThstrm_amount() );
//                resultList.get(4).setNonCurrentDebt( f.getFrmtrm_amount() );
//                resultList.get(5).setNonCurrentDebt(f.getBfefrmtrm_amount());
//            } else if ("부채총계".equals(f.getAccount_nm())){
//                resultList.get(3).setTotalDebt( f.getThstrm_amount() );
//                resultList.get(4).setTotalDebt( f.getFrmtrm_amount() );
//                resultList.get(5).setTotalDebt(f.getBfefrmtrm_amount());
//            } else if ("자본금".equals(f.getAccount_nm())){
//                resultList.get(3).setCapital( f.getThstrm_amount() );
//                resultList.get(4).setCapital( f.getFrmtrm_amount() );
//                resultList.get(5).setCapital(f.getBfefrmtrm_amount());
//            } else if ("이익잉여금(결손금)".equals(f.getAccount_nm())){
//                resultList.get(3).setProfitsLoss( f.getThstrm_amount() );
//                resultList.get(4).setProfitsLoss( f.getFrmtrm_amount() );
//                resultList.get(5).setProfitsLoss(f.getBfefrmtrm_amount());
//            } else if ("자본잉여금".equals(f.getAccount_nm())){
//                resultList.get(3).setProfits( f.getThstrm_amount() );
//                resultList.get(4).setProfits( f.getFrmtrm_amount() );
//                resultList.get(5).setProfits(f.getBfefrmtrm_amount());
//            } else if ("자본총계".equals(f.getAccount_nm())){
//                resultList.get(3).setTotalCapital( f.getThstrm_amount() );
//                resultList.get(4).setTotalCapital( f.getFrmtrm_amount() );
//                resultList.get(5).setTotalCapital( f.getBfefrmtrm_amount() );
//            } else if (null != f.getBsns_year()){
//                resultList.get(3).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 2));
//                resultList.get(4).setYears(Integer.toString(Integer.parseInt(f.getBsns_year()) - 1));
//                resultList.get(5).setYears(f.getBsns_year());
//            }
//        }

        return resultList;
    }

    public List<DisclosureInfo> getDisclosureInfoList () {

        String targetUrl = disclosureEndpointUrl
                .replaceAll("\\{crtfcKey}", crtfcKey)
                .replaceAll("\\{corpCode}", corpCode)
                .replaceAll("\\{bgnde}", "19990101")
                .replaceAll("\\{sort}", "date")
                .replaceAll("\\{sortmth}", "desc");


        DisclosureInfoResponse disclosureInfoResponse = (DisclosureInfoResponse) restOperations.getForObject(targetUrl, DisclosureInfoResponse.class);

        return disclosureInfoResponse.getDisclosureInfoList();

    }
}
