package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.*;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.*;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

/**
 * InspectionReport 控制层
 */
@Controller
@RequestMapping("prepurchase")
public class InspectionReportController extends BaseController {

    @Value("${static_path}")
    private String staticPath;

    @Autowired
    private IPurchaseInspectionService purchaseInspectionService;

    @Autowired
    private IShipDetailService shipDetailService;

    @Autowired
    private IInspectionReportService iInspectionReportService;

    @Autowired
    private IDefectService defectService;

    @Autowired
    private IMediaService mediaService;

    @Autowired
    private IGalleriesService galleriesService;

    @Autowired
    private IConditionInspectionService conditionInspectionService;

    @Autowired
    private ITechnicalAppendixService technicalAppendixService;

    @Autowired
    private IDocumentService documentService;



    //获取PrepurchaseInspection的列表信息
    @RequestMapping(value = "/surveyor/report",method = RequestMethod.GET)
    public String reportList(ModelMap modelMap){
        int id=getCurrentUser().getId();
        List<PurchaseInspection> inspections=purchaseInspectionService.selectByInspection(id);
        modelMap.put("inspections",inspections);
        return "prepurchase/surveyor/inspection/reportList";
    }

    //获取每个报告信息
    @RequestMapping(value = "/surveyor/reportEdit",method = RequestMethod.GET)
    public String edit(@RequestParam(required = false) Integer inspectionId,
                       ModelMap modelMap){
        //获取PurchaseInspection信息
        PurchaseInspection purchaseInspection=purchaseInspectionService.selectById(inspectionId);
        //获取船舶的信息
        EntityWrapper<ShipDetail> ew =getEntityWrapper();
        ew.addFilter("id={0}",purchaseInspection.getShipId());
        ShipDetail shipDetail=shipDetailService.selectOne(ew);

        //创建16个Technical appendix
        technicalAppendixService.createTechnicalAppendix(purchaseInspection.getInspectionReportId());

        //创建12Document
        documentService.createDocuments(purchaseInspection.getInspectionReportId());

        InspectionReport inspectionReport=null;
        if(purchaseInspection.getInspectionReportId()==null){
            inspectionReport =new InspectionReport();
            iInspectionReportService.insert(inspectionReport);
            purchaseInspection.setInspectionReportId(inspectionReport.getId());
            purchaseInspectionService.updateById(purchaseInspection);

            inspectionReport.setShipDetail(shipDetail);
        }else {
            inspectionReport=iInspectionReportService.selectByPurchaseInspectionId(purchaseInspection.getInspectionReportId());
        }

        //获取 Vessel tank capacity 这个表下的所有信息
        List<TechnicalAppendix> technicalAppendices=technicalAppendixService.selectListByReportId(purchaseInspection.getInspectionReportId(),"Vessel tank capacity");


        modelMap.put("report",inspectionReport);
        modelMap.put("technicalAppendices",technicalAppendices);

        return "prepurchase/surveyor/inspection/reportEdit";
    }

    //对报告中的船舶信息的更新
    @RequestMapping(value = "/surveyor/reportEditShip")
    @ResponseBody
    public JSONObject updateReportShip(ShipDetail shipDetail,@RequestParam (required = false) Integer reportId){
        JSONObject jsonObject=new JSONObject();
        try{
            shipDetailService.updateById(shipDetail);
            InspectionReport report=iInspectionReportService.selectById(reportId);
            report.setShipId(shipDetail.getId());
            iInspectionReportService.updateById(report);

            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }


    //对Defect的修改
    @RequestMapping(value = "/surveyor/reportEditDefect")
    @ResponseBody
    public JSONObject updateReportDefect(InspectionReport inspectionReport, @RequestParam (required = false) Integer reportId){
        JSONObject jsonObject=new JSONObject();

        try{
            iInspectionReportService.updateDefect(inspectionReport);
            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //创建相册
    @RequestMapping(value = "/surveyor/createAlbum",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject createAblum(@RequestParam (required = false) String albumName,@RequestParam(required = false) Integer reportId){
        JSONObject jsonObject=new JSONObject();
        Galleries galleries=new Galleries();
        galleries.setName(albumName);
        galleries.setCreateDate(new Date());
        galleries.setInspectionReportId(reportId);
        galleries.setNumber(0);
        galleries.setDelFlag(Const.DEL_FLAG_NORMAL);
        try{
            galleriesService.insert(galleries);
            jsonObject.put("mes",true);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put("mes",false);
        }

        return jsonObject;
    }

    //修改相册名称
    @RequestMapping(value = "/surveyor/editAlbum",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject editAblum(@RequestParam (required = false) String albumName,@RequestParam(required = false) Integer albumId){
        JSONObject jsonObject=new JSONObject();
        try{
            Galleries galleries=galleriesService.selectById(albumId);
            galleries.setName(albumName);
            galleriesService.updateById(galleries);
            jsonObject.put("mes",true);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put("mes",false);
        }

        return jsonObject;
    }

    //删除相册
    @RequestMapping(value = "/surveyor/deleteAlbum",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteAblum(@RequestParam(required = false) Integer albumId){
        JSONObject jsonObject=new JSONObject();
        try{
            Galleries galleries=galleriesService.selectById(albumId);
            galleries.setDelFlag(Const.DEL_FLAG_DELETE);
            galleriesService.updateById(galleries);
            jsonObject.put("mes",true);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put("mes",false);
        }

        return jsonObject;
    }

    //跳转到图片弹窗
    @RequestMapping(value = "/surveyor/viewImg",method = RequestMethod.GET)
    public String viewImg(@RequestParam (required=false) Integer galleriesId,ModelMap modelMap) {
        EntityWrapper<Media> ew = getEntityWrapper();
        ew.addFilter("galleries_id={0}", galleriesId);
        List<Media> medias = mediaService.selectList(ew);
        modelMap.put("medias", medias);
        modelMap.put("galleriesId", galleriesId);
        return  "prepurchase/surveyor/inspection/viewImg";
    }


    //删除照片
    @RequestMapping(value = "/surveyor/deleteImg",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteImg(@RequestParam(required = false) Integer imgId){
        JSONObject jsonObject=new JSONObject();
        try{

            int number =mediaService.deleteByMediaId(imgId);

            jsonObject.put("number",number);
            jsonObject.put("mes",true);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put("mes",false);
        }

        return jsonObject;
    }

    //添加照片
    @RequestMapping(value = "/surveyor/addImg",method = RequestMethod.GET)
    @ResponseBody
    public JSONObject addImg(Media media){
        JSONObject jsonObject=new JSONObject();
        try{
            media.setCreateDate(new Date());
            int number=mediaService.insertMedia(media);
            jsonObject.put("mes",true);
            jsonObject.put("number",number);
        }catch (Exception e){
            e.printStackTrace();
            jsonObject.put("mes",false);
        }

        return jsonObject;
    }


    //添加或者更新   Surveyor’s summary
    @RequestMapping(value = "/surveyor/reportEditSummary")
    @ResponseBody
    public JSONObject updateReportSummary(ConditionInspection conditionInspection,@RequestParam (required = false) Integer reportId){
        JSONObject jsonObject=new JSONObject();
        try{
            conditionInspectionService.insertOrUpdate(conditionInspection);

            InspectionReport report=iInspectionReportService.selectById(reportId);
            report.setConditionInspectionId(conditionInspection.getId());
            iInspectionReportService.updateById(report);
            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //添加或者更新   Technical appendix & equipment information
    @RequestMapping(value = "/surveyor/reportEditTechnical")
    @ResponseBody
    public JSONObject updateReportTechnical(TechnicalAppendix technicalAppendix){
        JSONObject jsonObject=new JSONObject();
        try{

            technicalAppendixService.insertOrUpdateTechnicalAppendix(technicalAppendix);
            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }


    //添加或者更新Documents
    @RequestMapping(value = "/surveyor/reportEditDocument")
    @ResponseBody
    public JSONObject updateReportDocument(InspectionReport inspectionReport){
        JSONObject jsonObject=new JSONObject();
        try{

            documentService.insertOrUpdateDocument(inspectionReport.getDocuments());
            jsonObject.put("mes",true);
        }catch (Exception e){
            jsonObject.put("mes",false);
            e.printStackTrace();
        }
        return jsonObject;
    }









    @RequestMapping(value = "/op/report",method = RequestMethod.GET)
    public String opReportList(ModelMap modelMap){
        int id=getCurrentUser().getId();
        List<PurchaseInspection> inspections=purchaseInspectionService.selectByInspection(id);
        modelMap.put("inspections",inspections);
        return "prepurchase/op/inspection/reportList";
    }

    //获取报告的详细信息
    @RequestMapping(value = "/op/reportInfo",method = RequestMethod.GET)
    public String view(@RequestParam(required = false) Integer reportId,
                       ModelMap modelMap){

        InspectionReport inspectionReport=iInspectionReportService.selectByPurchaseInspectionId(reportId);
        List<TechnicalAppendix> technicalAppendices=technicalAppendixService.selectListByReportId(reportId,"Vessel tank capacity");

        boolean flag=false;
        for(TechnicalAppendix t:technicalAppendices){
            if(t.getTechnicalAppendixInfo()!=null){
                flag=true;
                break;
            }
        }

        modelMap.put("flag",flag);
        modelMap.put("report",inspectionReport);
        modelMap.put("technicalAppendices",technicalAppendices);

        return "prepurchase/op/inspection/reportInfo";
    }

    //跳转到图片弹窗
    @RequestMapping(value = "/op/viewImg",method = RequestMethod.GET)
    public String lookImg(@RequestParam (required=false) Integer galleriesId,ModelMap modelMap){
        EntityWrapper<Media> ew=getEntityWrapper();
        ew.addFilter("galleries_id={0}",galleriesId);
        List<Media> medias=mediaService.selectList(ew);
        modelMap.put("medias",medias);
        modelMap.put("galleriesId",galleriesId);
        return "prepurchase/op/inspection/viewImg";
    }


}