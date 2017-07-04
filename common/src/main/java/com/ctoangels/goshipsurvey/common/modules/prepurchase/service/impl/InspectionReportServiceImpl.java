package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import com.artofsolving.jodconverter.DocumentConverter;
import com.artofsolving.jodconverter.openoffice.connection.OpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.connection.SocketOpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.converter.OpenOfficeDocumentConverter;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.*;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.*;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.*;
import com.ctoangels.goshipsurvey.common.util.Const;
import com.ctoangels.goshipsurvey.common.util.MyWebSocketHandler;
import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.ComThread;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import org.springframework.web.context.ContextLoader;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;

/**
 *
 * InspectionReport 表数据服务层接口实现类
 *
 */
@Service
public class InspectionReportServiceImpl extends SuperServiceImpl<InspectionReportMapper, InspectionReport> implements IInspectionReportService {


    @Autowired
    private InspectionReportMapper inspectionReportMapper;

    @Autowired
    private IDefectService defectService;

    @Autowired
    private IDictService dictService;

    @Autowired
    private GalleriesMapper galleriesMapper;

    @Autowired
    private ITechnicalAppendixService technicalAppendixService;

    @Autowired
    private IDocumentService documentService;

    @Autowired
    private IGradeModelService gradeModelService;

    @Autowired
    private GradeMapper gradeMapper;

    @Autowired
    private PurchaseInspectionMapper purchaseInspectionMapper;


    private static Logger logger = LoggerFactory.getLogger(InspectionReportServiceImpl.class);


    @Override
    public InspectionReport selectByPurchaseInspectionId(Integer purchaseInspectionId) {
        InspectionReport report=inspectionReportMapper.selectByPurchaseInspectionId(purchaseInspectionId);

        List<Dict> shipTypeDict = dictService.getListByType("shipType");

        report.getShipDetail().setShipType(shipTypeDict.get(Integer.parseInt(report.getShipDetail().getShipType())-1).getDes());
        return report;
    }

    @Override
    public Boolean updateDefect(InspectionReport inspectionReport) {
        //将页面删除的给删掉
        EntityWrapper<Defect> ew=new EntityWrapper<>();
        ew.addFilter("inspection_report_id={0}",inspectionReport.getId());

        List<Defect> defects=defectService.selectList(ew);
        for (Defect defect:defects){
            defectService.deleteSelective(defect);
        }

        List<Defect> defects1 =inspectionReport.getDefects();
        for(Defect defect:defects1){
            defectService.insertOrUpdate(defect);
        }

        InspectionReport report = inspectionReportMapper.selectById(inspectionReport.getId());
        report.setSubmitStatus3(Const.REPORT_SUBMIT);
        inspectionReportMapper.updateById(report);
        return true;
    }

    @Override
    @Async
    public void createReport(PurchaseInspection inspection){


        //report
        InspectionReport report = new InspectionReport();
        report.setShipId(inspection.getShipId());

        report.setSubmitStatus1(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus2(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus3(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus4(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus5(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus6(Const.REPORT_UNSUBMIT);
        report.setSubmitStatus7(Const.REPORT_UNSUBMIT);

        //插入一条报告
        inspectionReportMapper.insert(report);

        //创建两个默认相册
        Galleries galleries = new Galleries();
        galleries.setName("未命名");
        galleries.setNumber(0);
        galleries.setInspectionReportId(report.getId());
        galleries.setCreateDate(new Date());
        galleries.setDelFlag(Const.DEL_FLAG_NORMAL);
        galleriesMapper.insert(galleries);

        Galleries galleries1 = new Galleries();
        galleries1.setName("Certificate");
        galleries1.setNumber(0);
        galleries1.setInspectionReportId(report.getId());
        galleries1.setCreateDate(new Date());
        galleries1.setDelFlag(Const.DEL_FLAG_NORMAL);
        galleriesMapper.insert(galleries1);

        Galleries galleries3 = new Galleries();
        galleries3.setName("Grade");
        galleries3.setNumber(0);
        galleries3.setInspectionReportId(report.getId());
        galleries3.setCreateDate(new Date());
        galleries3.setDelFlag(Const.DEL_FLAG_NORMAL);
        galleriesMapper.insert(galleries3);

        //创建16个Technical appendix
        technicalAppendixService.createTechnicalAppendix(report.getId());

        //创建12Document
        documentService.createDocuments(report.getId());


        //从评分模板中获取信息
        EntityWrapper<GradeModel> ew1=new EntityWrapper<>();
        List<GradeModel>gradeModels=gradeModelService.selectList(ew1);

        try {
            for (GradeModel g: gradeModels){
                Grade grade=new Grade();
                BeanUtils.copyProperties(grade, g);
                grade.setId(null);
                grade.setInspectionReportId(report.getId());
                gradeMapper.insert(grade);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }



        //更新PurchaseInspection
        inspection.setInspectionReportId(report.getId());
        inspection.setSubmitStatus(Const.REPORT_UNSUBMIT);
        purchaseInspectionMapper.updateById(inspection);
    }

    @Override
    @Async
    public String downloadReportByReportId(Integer inspectionId,String endpoint,String accessId,String accessKey,String bucket){
        String url=exportSpecExcel(inspectionId,endpoint,accessId,accessKey,bucket);
        return url;
    }




    //导出报告
   public String exportSpecExcel(Integer reportId,String endpoint,String accessId,String accessKey,String bucket){
        List<Dict> dicts=dictService.getListByType("shipType");
        InspectionReport report=inspectionReportMapper.selectByPurchaseInspectionId(reportId);
        PurchaseInspection purchaseInspection =purchaseInspectionMapper.selectByReportId(report.getId());

        ShipDetail shipDetail=report.getShipDetail();



        File modelExcel=null;
        modelExcel = new File(getClass().getClassLoader().getResource("REPORT.xls").getFile());
        FileInputStream is = null; //文件流
        HSSFWorkbook wb = null;

        try {
            is = new FileInputStream(modelExcel);
            wb = new HSSFWorkbook(is);
        } catch (FileNotFoundException e) {
            logger.info(e.toString());
            e.printStackTrace();
        } catch (IOException e) {
            logger.info(e.toString());
            e.printStackTrace();
        }

        //*船舶信息表*//*
        HSSFSheet shipSheet = wb.getSheetAt(0);
        //船舶概要信息
        shipSheet.getRow(21).getCell(0).setCellValue("IMO:"+shipDetail.getImo());//船的IMO
        shipSheet.getRow(21).getCell(5).setCellValue(dicts.get(Integer.parseInt(shipDetail.getShipType())-1).getDes());//船舶类型

        HSSFSheet shipSheet1 = wb.getSheetAt(2);
       shipSheet1.getRow(2).getCell(0).setCellValue("Ship name:"+shipDetail.getShipName());
       shipSheet1.getRow(3).getCell(0).setCellValue("IMO:"+shipDetail.getImo());
       shipSheet1.getRow(4).getCell(0).setCellValue("Type:"+shipDetail.getType());
       shipSheet1.getRow(5).getCell(0).setCellValue("Class:"+shipDetail.getShipClass());
       shipSheet1.getRow(6).getCell(0).setCellValue("Flag:"+shipDetail.getFlag());
       shipSheet1.getRow(7).getCell(0).setCellValue("LOA(m):"+shipDetail.getLoa());
       shipSheet1.getRow(8).getCell(0).setCellValue("Beam(m):"+shipDetail.getBeam());
       shipSheet1.getRow(9).getCell(0).setCellValue("DWT(ton):"+shipDetail.getDwt());
       shipSheet1.getRow(10).getCell(0).setCellValue("Draft(m):"+shipDetail.getDraft());
       shipSheet1.getRow(11).getCell(0).setCellValue("GT:"+shipDetail.getGgt());
       shipSheet1.getRow(12).getCell(0).setCellValue("LDT(ton):"+shipDetail.getLdt());
       shipSheet1.getRow(13).getCell(0).setCellValue("SS(m/y):"+shipDetail.getSs());
       shipSheet1.getRow(14).getCell(0).setCellValue("Bunkers(ton):"+shipDetail.getBunkers());
       shipSheet1.getRow(15).getCell(0).setCellValue("Builder:"+shipDetail.getBuilder());
       shipSheet1.getRow(16).getCell(0).setCellValue("Ex.Name:"+shipDetail.getExName());
       shipSheet1.getRow(17).getCell(0).setCellValue("Ship type:"+shipDetail.getShipType());
       shipSheet1.getRow(18).getCell(0).setCellValue("Location:"+shipDetail.getLocation());
       shipSheet1.getRow(19).getCell(0).setCellValue("Inspection data:"+shipDetail.getInspectionDate());

        //Main engine
       shipSheet1.getRow(9).getCell(2).setCellValue(shipDetail.getMeMaker());
       shipSheet1.getRow(9).getCell(4).setCellValue(shipDetail.getMeType());
       shipSheet1.getRow(10).getCell(2).setCellValue(shipDetail.getMeMcrKw());
       shipSheet1.getRow(10).getCell(4).setCellValue(shipDetail.getMeMcrRpm());
       shipSheet1.getRow(11).getCell(2).setCellValue(shipDetail.getMeRunningHours());
       shipSheet1.getRow(12).getCell(2).setCellValue(shipDetail.getMeCriticalRpm());
       shipSheet1.getRow(13).getCell(2).setCellValue(shipDetail.getMeOthers());

        //Auxiliary Power
       shipSheet1.getRow(15).getCell(2).setCellValue(shipDetail.getApMaker());
       shipSheet1.getRow(15).getCell(4).setCellValue(shipDetail.getApType());
       shipSheet1.getRow(16).getCell(2).setCellValue(shipDetail.getApLoad());
       shipSheet1.getRow(16).getCell(4).setCellValue(shipDetail.getApA1());
       shipSheet1.getRow(17).getCell(2).setCellValue(shipDetail.getApA2());
       shipSheet1.getRow(18).getCell(2).setCellValue(shipDetail.getApA3());
       shipSheet1.getRow(19).getCell(2).setCellValue(shipDetail.getApOthers());

        //Boiler
       shipSheet1.getRow(20).getCell(2).setCellValue(shipDetail.getBoMaker());
       shipSheet1.getRow(20).getCell(4).setCellValue(shipDetail.getBoType());
       shipSheet1.getRow(21).getCell(2).setCellValue(shipDetail.getBoEvaporation());
       shipSheet1.getRow(21).getCell(2).setCellValue(shipDetail.getBoHeatingArea());
       shipSheet1.getRow(22).getCell(2).setCellValue(shipDetail.getBoOthers());

        //*GradeIng*//*
        HSSFSheet sheet = wb.getSheetAt(3);
        sheet.getRow(4).getCell(3).setCellValue(purchaseInspection.getTotalGrade());

        Double hullGrade=gradeMapper.selectGradeByItem("船体",report.getId(),1).getGrade();
        Double deckGrade=gradeMapper.selectGradeByItem("甲板",report.getId(),1).getGrade();
        Double holdGrade=gradeMapper.selectGradeByItem("货舱",report.getId(),1).getGrade();
        Double marineGrade=gradeMapper.selectGradeByItem("轮机",report.getId(),1).getGrade();
        Double electricGrade=gradeMapper.selectGradeByItem("电气",report.getId(),1).getGrade();
        Double bridgeGrade=gradeMapper.selectGradeByItem("驾驶台",report.getId(),1).getGrade();

       if(hullGrade!=null){
           sheet.getRow(4).getCell(2).setCellValue(hullGrade);
       }
       if(deckGrade!=null){
           sheet.getRow(5).getCell(2).setCellValue(deckGrade);
       }
       if(holdGrade!=null){
           sheet.getRow(6).getCell(2).setCellValue(holdGrade);
       }
       if(marineGrade!=null) {
           sheet.getRow(7).getCell(2).setCellValue(marineGrade);
       }
       if(electricGrade!=null){
           sheet.getRow(8).getCell(2).setCellValue(electricGrade);
       }

       if(bridgeGrade!=null){
           sheet.getRow(9).getCell(2).setCellValue(bridgeGrade);
       }

        //*DEFECTS*//*
        HSSFSheet sheet1 = wb.getSheetAt(4);
        List<Defect> defects=report.getDefects();
       int m=0;
        for(int i=0;i<defects.size();i++){
            float defaultCount=0.00f;
            float fontCountInline=2.3f;
            String description=defects.get(i).getDescription();
            for (int j=0; j < description.length(); j++) {
                float ff = getRegex(description.substring(j, j + 1));
                defaultCount = defaultCount + ff;
            }
            Row row=sheet1.createRow(i+2);
            float hieght = (int) (defaultCount / fontCountInline);//计算
            sheet1.getRow(i+2).setHeightInPoints(hieght);
            //创建一行，并且创建三个单元格

            Cell cell0=row.createCell(0);
            Cell cell1=row.createCell(1);
            Cell cell2=row.createCell(2);
            Cell cell3=row.createCell(3);
            Cell cell4=row.createCell(4);
            Cell cell5=row.createCell(5);


            //设置单元格上下添加边框和颜色
            CellStyle cellStyle=wb.createCellStyle();
            cellStyle.setBorderBottom(CellStyle.BORDER_THIN);
            cellStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());

            cellStyle.setBorderTop(CellStyle.BORDER_THIN);
            cellStyle.setTopBorderColor(IndexedColors.BLACK.getIndex());

            //设置单元格换行
            cellStyle.setWrapText(true);

            //设置单元格的垂直居中和水平居中
            cellStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
            cellStyle.setAlignment(CellStyle.ALIGN_CENTER);

            cell0.setCellStyle(cellStyle);
            cell1.setCellStyle(cellStyle);
            cell2.setCellStyle(cellStyle);
            cell3.setCellStyle(cellStyle);
            cell4.setCellStyle(cellStyle);
            cell5.setCellStyle(cellStyle);

            sheet1.addMergedRegion(new CellRangeAddress(i+2, i+2, 1, 3));
            sheet1.addMergedRegion(new CellRangeAddress(i+2, i+2, 4, 5));

            row.getCell(0).setCellValue(i+1);
            row.getCell(1).setCellValue(defects.get(i).getDescription());
            row.getCell(4).setCellValue(defects.get(i).getEstimatCost());

            m=i;

        }

        //获取defect中的该sheet的页数
       int sheetBeforePage=2;
       int flag=6;
       int height=getRowsHeight(wb,sheet1,m+2,sheetBeforePage,flag);//flag表示的是对应excel的目录的第几行

       sheetBeforePage+=height;

        /*Condition inspection*/
        ConditionInspection conditionInspection=report.getConditionInspection();
       HSSFSheet sheet2 = wb.getSheetAt(5);

       //设置单元格背景颜色和字体大小
       CellStyle cellStyle1=wb.createCellStyle();
       /*cellStyle1.setFillBackgroundColor(IndexedColors.AQUA.getIndex());*/


       cellStyle1.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
       cellStyle1.setFillForegroundColor(HSSFColor.AQUA.index);

       HSSFFont font=wb.createFont();
       font.setFontHeight((short)320);
       cellStyle1.setFont(font);

       //设置单元格自动换行
       CellStyle cellStyle2=wb.createCellStyle();
       cellStyle2.setWrapText(true);

       int count=2;
       if(conditionInspection!=null){
           if(conditionInspection.getHull()!=null && conditionInspection.getHull()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getHull(),"Hull");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getDeck()!=null && conditionInspection.getDeck()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getDeck(),"Forward mooring deck/Aft mooring deck/Main deck");
               sheet2.createRow(count);
               count++;
           }

           if(conditionInspection.getDeckMarchinery()!=null && conditionInspection.getDeckMarchinery()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getDeckMarchinery(),"Deck marchinery (mooring,crane,outfittings,etc.)");
               sheet2.createRow(count);
               count++;
           }

           if(conditionInspection.getBallastTank()!=null && conditionInspection.getBallastTank()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getDeckMarchinery(),"Ballast tanks & Void spaces");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getAccommodation()!=null && conditionInspection.getAccommodation()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getAccommodation(),"Accommodation & deck");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getNavigationBridge()!=null && conditionInspection.getNavigationBridge()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getNavigationBridge(),"Navigation bridge & Commuication equipments");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getMachinerySpace()!=null && conditionInspection.getMachinerySpace()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getMachinerySpace(),"Machinery space & Engine room machinery");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getLifeSaving()!=null && conditionInspection.getLifeSaving()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getLifeSaving(),"Life saving ,Fire and safety equipment");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getGalley()!=null && conditionInspection.getGalley()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getGalley(),"Galley,provision and refrigerated rooms");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getBallastWater()!=null && conditionInspection.getBallastWater()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getBallastWater(),"Ballast water treatment system");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getCargoTank()!=null && conditionInspection.getCargoTank()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getCargoTank(),"Cargo tanks");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getCargoControlRoom()!=null && conditionInspection.getCargoControlRoom()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getCargoControlRoom(),"Cargo control room");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getPumpRoom()!=null && conditionInspection.getPumpRoom()!=""){
               count= addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getPumpRoom(),"Pump room");
               sheet2.createRow(count);
               count++;
           }

           if(conditionInspection.getPipelines()!=null && conditionInspection.getPipelines()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getPipelines(),"Pipelines");
               sheet2.createRow(count);
               count++;
           }
           if(conditionInspection.getInterGasSystem()!=null && conditionInspection.getInterGasSystem()!=""){
               count=addCellInfo(conditionInspection,sheet2,count,cellStyle1,cellStyle2,conditionInspection.getInterGasSystem(),"Inter gas system");
               sheet2.createRow(count);
           }
       }

       flag=8;
       height=getRowsHeight(wb,sheet2,count,sheetBeforePage,flag);//flag表示的是对应excel的第几个目录
       sheetBeforePage+=height;

         /*TechnicalAppendix*/
         List<TechnicalAppendix>  technicalAppendixs=report.getTechnicalAppendices();
       HSSFSheet sheet3 = wb.getSheetAt(6);
       //设置单元格背景颜色和字体大小
       CellStyle cellStyle3=wb.createCellStyle();
       cellStyle3.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
       cellStyle3.setFillForegroundColor(HSSFColor.AQUA.index);


       HSSFFont font1=wb.createFont();
       font1.setFontHeight((short)320);
       cellStyle3.setFont(font1);


       int num=6;
       sheet3.createRow(num-1);
       for(TechnicalAppendix technicalAppendix:technicalAppendixs){
           if(technicalAppendix.getTechnicalAppendixInfo().size()>0 && technicalAppendix.getTechnicalAppendixInfo()!=null){
               //标题
               Row row=sheet3.createRow(num);

               createCell(row);
               sheet3.addMergedRegion(new CellRangeAddress(num, num, 0, 5));
               row.getCell(0).setCellStyle(cellStyle3);
               row.getCell(0).setCellValue(technicalAppendix.getCatagory());

               //表头
               num+=1;
               Row row1=sheet3.createRow(num);
               createCell(row1);

               CellStyle cellStyle4=wb.createCellStyle();
               cellStyle4.setAlignment(CellStyle.ALIGN_CENTER);
               cellStyle4.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
               cellStyle4.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);
               cellStyle4.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
               cellStyle4.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
               cellStyle4.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
               cellStyle4.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框
               if(technicalAppendix.getTitle3()!=null && technicalAppendix.getTitle3()!=""){
                   sheet3.addMergedRegion(new CellRangeAddress(num, num, 0, 1));
                   sheet3.addMergedRegion(new CellRangeAddress(num, num, 2, 4));
                   row1.getCell(0).setCellValue(technicalAppendix.getTitle1());
                   row1.getCell(2).setCellValue(technicalAppendix.getTitle2());
                   row1.getCell(5).setCellValue(technicalAppendix.getTitle3());

                   row1.getCell(0).setCellStyle(cellStyle4);
                   row1.getCell(1).setCellStyle(cellStyle4);
                   row1.getCell(2).setCellStyle(cellStyle4);
                   row1.getCell(3).setCellStyle(cellStyle4);
                   row1.getCell(4).setCellStyle(cellStyle4);
                   row1.getCell(5).setCellStyle(cellStyle4);

               }else {
                   sheet3.addMergedRegion(new CellRangeAddress(num, num, 0, 3));
                   sheet3.addMergedRegion(new CellRangeAddress(num, num, 4, 5));

                   row1.getCell(0).setCellValue(technicalAppendix.getTitle1());
                   row1.getCell(4).setCellValue(technicalAppendix.getTitle2());

                   row1.getCell(0).setCellStyle(cellStyle4);
                   row1.getCell(1).setCellStyle(cellStyle4);
                   row1.getCell(2).setCellStyle(cellStyle4);
                   row1.getCell(3).setCellStyle(cellStyle4);
                   row1.getCell(4).setCellStyle(cellStyle4);
                   row1.getCell(5).setCellStyle(cellStyle4);
               }
               num++;

               //表中内容
               CellStyle cellStyle5=wb.createCellStyle();
               cellStyle5.setAlignment(CellStyle.ALIGN_CENTER);
               cellStyle5.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
               cellStyle5.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
               cellStyle5.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
               cellStyle5.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框

               List<TechnicalAppendixInfo> infos=technicalAppendix.getTechnicalAppendixInfo();
               for(TechnicalAppendixInfo info:infos){
                   Row row2=sheet3.createRow(num);
                    createCell(row2);

                   if(technicalAppendix.getTitle3()!=null && technicalAppendix.getTitle3()!=""){
                       sheet3.addMergedRegion(new CellRangeAddress(num, num, 0, 1));
                       sheet3.addMergedRegion(new CellRangeAddress(num, num, 2, 4));

                       row2.getCell(0).setCellStyle(cellStyle5);
                       row2.getCell(1).setCellStyle(cellStyle5);
                       row2.getCell(2).setCellStyle(cellStyle5);
                       row2.getCell(3).setCellStyle(cellStyle5);
                       row2.getCell(4).setCellStyle(cellStyle5);
                       row2.getCell(5).setCellStyle(cellStyle5);

                       row2.getCell(0).setCellValue(info.getOne());
                       row2.getCell(2).setCellValue(info.getTwo());
                       row2.getCell(5).setCellValue(info.getThree());
                   }else{
                       sheet3.addMergedRegion(new CellRangeAddress(num, num, 0, 3));
                       sheet3.addMergedRegion(new CellRangeAddress(num, num, 4, 5));
                       row2.getCell(0).setCellStyle(cellStyle5);
                       row2.getCell(1).setCellStyle(cellStyle5);
                       row2.getCell(2).setCellStyle(cellStyle5);
                       row2.getCell(3).setCellStyle(cellStyle5);
                       row2.getCell(4).setCellStyle(cellStyle5);
                       row2.getCell(5).setCellStyle(cellStyle5);

                       row2.getCell(0).setCellValue(info.getOne());
                       row2.getCell(4).setCellValue(info.getTwo());
                   }
                   num++;
               }
                sheet3.createRow(num);
               num++;

           }



       }

       flag=10;
       height=getRowsHeight(wb,sheet3,num-1,sheetBeforePage,flag);//flag表示的是对应excel的第几个目录
       sheetBeforePage+=height;

       /*documents*/
       List<Document>  documents=report.getDocuments();
       HSSFSheet sheet4 = wb.getSheetAt(7);
       CellStyle cellStyle6=wb.createCellStyle();
       cellStyle6.setAlignment(HSSFCellStyle.ALIGN_CENTER);
       cellStyle6.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
       cellStyle6.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
       cellStyle6.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
       cellStyle6.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框

       int i=3;
       sheet4.createRow(i-2);
       for(Document d:documents){
           if(d.getAttachmentName()!=null && d.getAttachmentName()!=""){
               Row row=sheet4.createRow(i);
               createCell(row);
               sheet4.addMergedRegion(new CellRangeAddress(i, i, 0, 3));
               sheet4.addMergedRegion(new CellRangeAddress(i, i, 4, 5));
               row.getCell(0).setCellStyle(cellStyle6);
               row.getCell(1).setCellStyle(cellStyle6);
               row.getCell(2).setCellStyle(cellStyle6);
               row.getCell(3).setCellStyle(cellStyle6);
               row.getCell(4).setCellStyle(cellStyle6);
               row.getCell(5).setCellStyle(cellStyle6);
               row.getCell(0).setCellValue(d.getTitle());
               row.getCell(4).setCellValue("Exit");
               i++;
           }


       }
       flag=12;
       height=getRowsHeight(wb,sheet4,i-1,sheetBeforePage,flag);//flag表示的是对应excel的第几个目录
       sheetBeforePage+=height;

        /*Grading*/
       List<Grade>  grades=gradeMapper.getListByParentItem("0",report.getId());
       HSSFSheet sheet5 = wb.getSheetAt(9);

       sheet5.createRow(1);
       sheet5.createRow(8);
       sheet5.createRow(9);
       sheet5.createRow(16);

       //一级标题的样式
       CellStyle cellStyle7=wb.createCellStyle();
       cellStyle7.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
       cellStyle7.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
       cellStyle7.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
       cellStyle7.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框
       cellStyle7.setAlignment(CellStyle.ALIGN_CENTER);
       cellStyle7.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
       cellStyle7.setFillForegroundColor(HSSFColor.GREY_50_PERCENT.index);
       HSSFFont font2=wb.createFont();
       font2.setFontHeight((short)320);
       cellStyle7.setFont(font2);

       //二级标题的样式
       CellStyle cellStyle8=wb.createCellStyle();
       cellStyle8.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
       cellStyle8.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
       cellStyle8.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
       cellStyle8.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框
       cellStyle8.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
       cellStyle8.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);
       HSSFFont font3=wb.createFont();
       font3.setFontHeight((short)240);
       cellStyle8.setFont(font3);

       //三级标题
       CellStyle cellStyle9=wb.createCellStyle();
       cellStyle9.setBorderBottom(HSSFCellStyle.BORDER_THIN); //下边框
       cellStyle9.setBorderLeft(HSSFCellStyle.BORDER_THIN);//左边框
       cellStyle9.setBorderTop(HSSFCellStyle.BORDER_THIN);//上边框
       cellStyle9.setBorderRight(HSSFCellStyle.BORDER_THIN);//右边框

       int j=1;
       for(Grade g:grades){
           if(g.getGrade()!=null){
               Row row=sheet5.createRow(j);
               createCell(row);
               sheet5.addMergedRegion(new CellRangeAddress(j, j, 2, 4));

               row.getCell(0).setCellStyle(cellStyle7);
               row.getCell(1).setCellStyle(cellStyle7);
               row.getCell(2).setCellStyle(cellStyle7);
               row.getCell(3).setCellStyle(cellStyle7);
               row.getCell(4).setCellStyle(cellStyle7);
               row.getCell(5).setCellStyle(cellStyle7);

               row.getCell(0).setCellValue(g.getItem());
               row.getCell(1).setCellValue(g.getGrade());

               j++;
           }else {
               continue;
           }
           for(Grade grade:g.getGrades()){
               if(grade.getGrade()!=null){
                   Row row1=sheet5.createRow(j);
                   createCell(row1);
                   sheet5.addMergedRegion(new CellRangeAddress(j, j, 2, 4));

                   row1.getCell(0).setCellStyle(cellStyle8);
                   row1.getCell(1).setCellStyle(cellStyle8);
                   row1.getCell(2).setCellStyle(cellStyle8);
                   row1.getCell(3).setCellStyle(cellStyle8);
                   row1.getCell(4).setCellStyle(cellStyle8);
                   row1.getCell(5).setCellStyle(cellStyle8);

                   row1.getCell(0).setCellValue(grade.getItem());
                   row1.getCell(1).setCellValue(grade.getGrade());

                   j++;
               }else {
                   continue;
               }

               for(Grade gr:grade.getGrades()){

                   if(gr.getGrade()==null){
                       continue;
                   }
                   Row row2=sheet5.createRow(j);
                   createCell(row2);
                   sheet5.addMergedRegion(new CellRangeAddress(j, j, 2, 4));

                   row2.getCell(0).setCellStyle(cellStyle9);
                   row2.getCell(1).setCellStyle(cellStyle9);
                   row2.getCell(2).setCellStyle(cellStyle9);
                   row2.getCell(3).setCellStyle(cellStyle9);
                   row2.getCell(4).setCellStyle(cellStyle9);
                   row2.getCell(5).setCellStyle(cellStyle9);
                   row2.getCell(0).setCellValue(gr.getItem());
                   row2.getCell(1).setCellValue(gr.getGrade());
                   if(gr.getRemark()!=null && gr.getRemark()!=""){
                       row2.getCell(2).setCellValue(gr.getRemark());
                   }
                   if(gr.getFileName()!=null && gr.getFileName()!=""){
                       row2.getCell(5).setCellValue("Exit");
                   }
                   j++;
               }
           }


       }
       flag=14;
       height=getRowsHeight(wb,sheet5,j-1,sheetBeforePage,flag);//flag表示的是对应excel的第几个目录


       // 第六步，将文件存到指定位置
        try {
            FileOutputStream fout = new FileOutputStream("luzhen" + ".xls");
            wb.write(fout);
            fout.close();
        } catch (Exception e) {
            logger.info(e.toString());
            e.printStackTrace();
        }
        String basePath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
        String path=basePath.substring(0,basePath.lastIndexOf("admin"))+"admin";
        path.replace("\"","\"\"");

       String url=xlsToPdf(path,path,endpoint,accessId,accessKey,bucket);
       purchaseInspection.setReportUrl(url);
       purchaseInspectionMapper.updateById(purchaseInspection);

       return url;
   }

    public  float getRegex(String charStr) {

        if(charStr=="")
        {
            return 0.5f;
        }
        // 判断是否为字母或字符
        if (Pattern.compile("^[A-Za-z0-9]+$").matcher(charStr).matches()) {
            return 0.5f;
        }
        // 判断是否为全角

        if (Pattern.compile("[\u4e00-\u9fa5]+$").matcher(charStr).matches()) {
            return 1.00f;
        }
        //全角符号 及中文
        if (Pattern.compile("[^x00-xff]").matcher(charStr).matches()) {
            return 1.00f;
        }
        return 0.5f;

    }

    public  float conditionInspectionCreateCell(Row row,ConditionInspection conditionInspection,
                                  HSSFSheet sheet,int count,CellStyle cellStyle,String description){
        Cell cell0=row.createCell(0);
        Cell cell1=row.createCell(1);
        Cell cell2=row.createCell(2);
        Cell cell3=row.createCell(3);
        Cell cell4=row.createCell(4);
        Cell cell5=row.createCell(5);
        sheet.addMergedRegion(new CellRangeAddress(count, count, 0, 5));
        sheet.getRow(count).getCell(0).setCellStyle(cellStyle);

        float hieght=0.0f;
       if(description!=""){
           float defaultRowHeight = 14.00f;//每一行的高度指定
           float defaultCount=0.00f;
           float fontCountInline=40.0f;
           for (int j=0; j < description.length(); j++) {
               float ff = getRegex(description.substring(j, j + 1));
               defaultCount = defaultCount + ff;
           }
           hieght = (int) (defaultCount / fontCountInline+1)*defaultRowHeight;//计算
       }
       return hieght;

    }

    public  Integer addCellInfo(ConditionInspection conditionInspection,HSSFSheet sheet,int count
            ,CellStyle cellStyle1,CellStyle cellStyle2,String description,String catagory){
        Row row1=sheet.createRow(count);
        conditionInspectionCreateCell(row1,conditionInspection,sheet,count,cellStyle1,"");
        row1.getCell(0).setCellValue(catagory);

        count++;
        Row row2=sheet.createRow(count);
        float hieght=conditionInspectionCreateCell(row2,conditionInspection,sheet,count,cellStyle2,description);
        row2.setHeightInPoints(hieght);
        row2.getCell(0).setCellValue(description);
        count++;
        return count;

    }

    //创建单元格
    public void createCell(Row row){
        row.createCell(0);
        row.createCell(1);
        row.createCell(2);
        row.createCell(3);
        row.createCell(4);
        row.createCell(5);
    }


    //excel转成pdf
    public  String xlsToPdf(String inFilePath,String outFilePath,String endpoint,String accessId,String accessKey,String bucket){
        inFilePath+="\\luzhen.xls";

        outFilePath+="\\REPORT.pdf";
        //String OpenOffice_HOME = "D:/Program Files/OpenOffice.org 3";// 这里是OpenOffice的安装目录,C:\Program Files (x86)\OpenOffice 4
        String OpenOffice_HOME="";
        String osName = System.getProperty("os.name");
        if (Pattern.matches("Windows.*", osName)) {
            OpenOffice_HOME = "C:\\Program Files (x86)\\OpenOffice 4\\program\\";
        } else {
            OpenOffice_HOME = "\\opt\\openoffice4\\program\\";
        }

        Process pro = null;
        try {
            File inputFile = new File(inFilePath);
            // 如果目标路径不存在, 则新建该路径
            File outputFile = new File(outFilePath);
            // 启动OpenOffice的服务
           /* String[] command = {OpenOffice_HOME+"soffice","-headless -accept=\"socket,host=127.0.0.1,port=8100;urp;\" -nofirststartwizard"};
            pro = Runtime.getRuntime().exec(command);*/
            // connect to an OpenOffice.org instance running on port 8100
            OpenOfficeConnection connection = new SocketOpenOfficeConnection("127.0.0.1", 8100);
            //OpenOfficeConnection connection = new SocketOpenOfficeConnection(8100);
            connection.connect();

            // convert
            DocumentConverter converter = new OpenOfficeDocumentConverter(connection);
            converter.convert(inputFile, outputFile);
            //converter.convert(inputFile,xml,outputFile,pdf);

            // close the connection
            connection.disconnect();
            // 封闭OpenOffice服务的进程
           /* pro.destroy()*/;
            String url= uploadFile2OSS(outFilePath,endpoint,accessId,accessKey,bucket);
            return url;
        } catch (Exception e) {
            logger.error(e.toString());
        }

       return null;


    }

    public String uploadFile2OSS(String filePath,String endpoint,String accessId,String accessKey,String bucket) {

        OSSClient ossClient=new OSSClient(endpoint,accessId,accessKey);

        FileInputStream fin=null;
        String s=UUID.randomUUID().toString();

        try {
            File file = new File(filePath);
            fin=new FileInputStream(file);

            //创建上传Object的Metadata
            ObjectMetadata objectMetadata = new ObjectMetadata();
            objectMetadata.setContentLength(fin.available());
            objectMetadata.setCacheControl("no-cache");
            objectMetadata.setHeader("Pragma", "no-cache");
            objectMetadata.setContentDisposition("inline;filename=" + s+".pdf");
            //上传文件
            PutObjectResult putResult = ossClient.putObject(bucket, s+".pdf", fin, objectMetadata);
        } catch (IOException e) {
            /*log.error(e.getMessage(), e);*/
        } finally {
            try {
                if (fin != null) {
                    fin.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String url="http://"+bucket+"."+endpoint+"/"+s+".pdf";
        return url;
    }


    //改方法通过获取每一行的高度的磅数加在一起，算出每一个sheet需要的页数（也就是打印出来的页数）
    public Integer getRowsHeight(HSSFWorkbook wb,HSSFSheet sheet,Integer rows,Integer sheetBeforePage,int flag){
        //获取目录的sheet
        HSSFSheet sheet1=wb.getSheetAt(1);
        //打印出一个分页需要
        int totalRowsHeight=51*14;

        int height=0;
        for(int j=0;j<=rows;j++){
            height+=sheet.getRow(j).getHeightInPoints();
        }
        int pages=height / totalRowsHeight+1;

        sheet1.getRow(flag).getCell(6).setCellValue(sheetBeforePage+1);


        return pages;
    }
}