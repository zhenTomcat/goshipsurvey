package com.ctoangels.goshipsurvey.common.modules.sys.service;

/**
 * Created by lenovo on 2017/6/14.
 */
public interface IMessageAsyncService {


    /*
    *发送给op
    *  on-off 1.xxx船租还船检验,已有验船师申请检验
     */
    void publicMessage1(Integer quotationId, String shipName, Integer applicationId, String companyName);

    /*
    *  on-off 2.xxx船租还船检验,验船师已上传护照等文件,请及时查看
     */
    void publicMessage2();


    /*
    *  on-off 3.xxx船租还船检验,检验报告已出,请及时在网上查看,并对本次验船做出评价
     */
    void publicMessage3();

    /*
    *  pre-purchase 1.xxx船买卖船勘验,已有验船师申请勘验
     */
    void publicMessage4();

    /*
    *  pre-purchase 2.xxx船买卖船勘验,验船师已上传护照,loi等文件,请及时查看
     */
    void publicMessage5();

    /*
*  pre-purchase 3.xxx船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价
 */
    void publicMessage6();


    /*
    *  发送给company
    *  on-off 1.本区域有可进行租还船检验船舶,请及时查看
     */
    void publicMessage7();

    /*
    *  on-off 2.xxx船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排验船人员验船
     */
    void publicMessage8();

    /*
    *  on-off 3.xxx船租还船检验,验船申请失败
    */
    void publicMessage9();

    /*
    *  on-off 4.xxx船租还船检验,船东已对本次验船做出评价
    */
    void publicMessage10();

    /*
  *  pre-purchase 1.本区域内有可进行买卖船勘验船舶,请及时查看
   */
    void publicMessage11();

    /*
  *  pre-purchase 2.xxx船买卖船勘验,船东已接受您的勘验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船
   */
    void publicMessage12();

    /*
  *  pre-purchase 3.xxx船买卖船勘验,勘验申请失败
   */
    void publicMessage13();

    /*
  *  pre-purchase 4.xxx船买卖船勘验,船东已对本次验船做出评价
   */
    void publicMessage14();
}
