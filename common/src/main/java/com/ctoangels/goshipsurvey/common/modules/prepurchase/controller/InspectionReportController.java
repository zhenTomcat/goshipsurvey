package com.ctoangels.goshipsurvey.common.modules.prepurchase.controller;

import com.alibaba.fastjson.JSONObject;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.OSSObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Dict;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.IDictService;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.*;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.GalleriesMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.*;
import com.ctoangels.goshipsurvey.common.modules.sys.controller.BaseController;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IMessageService;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.net.URLEncoder;
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

    @Value("${oss.endpoint}")
    private String endpoint;

    @Value("${oss.accessId}")
    private String accessId;

    @Value("${oss.accessKey}")
    private String accessKey;
    @Value("${oss.bucket}")
    private String bucket;

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

    @Autowired
    private IMessageService messageService;

    @Autowired
    private IGradeModelService gradeModelService;

    @Autowired
    private IGradeConditionService gradeConditionService;

    @Autowired
    private IGradeService gradeService;

    @Autowired
    private IDictService dictService;

    @Autowired
    private ITechnicalModelContentService technicalModelContentService;

    @Autowired
    private GalleriesMapper galleriesMapper;


    //获取InspectionReport的列表信息
    @RequestMapping(value = "/surveyor/report")
    public String reportList() {
        return "prepurchase/surveyor/inspection/reportList";
    }

    @RequestMapping(value = "/surveyor/report/list")
    @ResponseBody
    public JSONObject reportList(ModelMap modelMap) {
        JSONObject jsonObject = new JSONObject();
        int id = getCurrentUser().getId();

        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }
        List<PurchaseInspection> inspections = purchaseInspectionService.selectByInspection(id, start, length);

        Integer total = purchaseInspectionService.getInspectionCount(id);

        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, inspections);
        return jsonObject;
    }

    //获取每个报告信息
    @RequestMapping(value = "/surveyor/reportEdit", method = RequestMethod.GET)
    public String edit(@RequestParam(required = false) Integer inspectionId,
                       ModelMap modelMap) {
        //获取PurchaseInspection信息
        PurchaseInspection purchaseInspection = purchaseInspectionService.selectById(inspectionId);

        InspectionReport inspectionReport = iInspectionReportService.selectByPurchaseInspectionId(purchaseInspection.getInspectionReportId());

        //获取 Vessel tank capacity 这个表下的所有信息
        List<TechnicalAppendix> technicalAppendices = technicalAppendixService.selectListByReportId(purchaseInspection.getInspectionReportId(), "Vessel tank capacity");
        List<Dict> dicts = dictService.getListByType("shipType");

        //p评分标准
        List<GradeCondition> hullGrades=gradeConditionService.selectGradeConditionByType("船体");
        List<GradeCondition> machineGrades=gradeConditionService.selectGradeConditionByType("机械");

        modelMap.put("totalGrade",purchaseInspection.getTotalGrade());
        modelMap.put("dicts", dicts);

        modelMap.put("totalGrade", purchaseInspection.getTotalGrade());
        modelMap.put("hullGrades", hullGrades);
        modelMap.put("machineGrades", machineGrades);
        modelMap.put("report", inspectionReport);
        modelMap.put("technicalAppendices", technicalAppendices);

        if (purchaseInspection.getSubmitStatus() == 1) {
            return "prepurchase/surveyor/inspection/reportView";
        }

        return "prepurchase/surveyor/inspection/reportEdit";

    }

    //对报告中的船舶信息的更新
    @RequestMapping(value = "/surveyor/reportEditShip")
    @ResponseBody
    public JSONObject updateReportShip(ShipDetail shipDetail, @RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        try {
            shipDetailService.updateById(shipDetail);
            InspectionReport report = iInspectionReportService.selectById(reportId);
            report.setShipId(shipDetail.getId());
            report.setSubmitStatus1(Const.REPORT_SUBMIT);
            iInspectionReportService.updateById(report);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //异步加载Grades
    @RequestMapping(value = "/surveyor/getGradeList")
    @ResponseBody
    public JSONObject getGradeList(@RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        try {
            List<Grade> grades = gradeService.selectListGrade(reportId);
            jsonObject.put("grades", grades);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //
    @RequestMapping(value = "/surveyor/reportEditGrade")
    @ResponseBody
    public JSONObject reportEditGrade(Grade grade) {
        JSONObject jsonObject = new JSONObject();
        try {
            List<Double> totalGrades = gradeService.updateGradeById(grade);
            jsonObject.put("mes", true);
            jsonObject.put("totalGrades", totalGrades);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }


    //对Defect的修改
    @RequestMapping(value = "/surveyor/reportEditDefect")
    @ResponseBody
    public JSONObject updateReportDefect(InspectionReport inspectionReport, @RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();

        try {
            iInspectionReportService.updateDefect(inspectionReport);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //创建相册
    @RequestMapping(value = "/surveyor/createAlbum", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject createAblum(@RequestParam(required = false) String albumName, @RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        Galleries galleries = new Galleries();
        galleries.setName(albumName);
        galleries.setCreateDate(new Date());
        galleries.setInspectionReportId(reportId);
        galleries.setNumber(0);
        galleries.setDelFlag(Const.DEL_FLAG_NORMAL);
        try {
            galleriesService.insert(galleries);
            jsonObject.put("galleries",galleries);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }

    //修改相册名称
    @RequestMapping(value = "/surveyor/editAlbum", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject editAblum(@RequestParam(required = false) String albumName, @RequestParam(required = false) Integer albumId) {
        JSONObject jsonObject = new JSONObject();
        try {
            Galleries galleries = galleriesService.selectById(albumId);
            galleries.setName(albumName);
            galleriesService.updateById(galleries);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }

    //删除相册
    @RequestMapping(value = "/surveyor/deleteAlbum", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteAblum(@RequestParam(required = false) Integer albumId) {
        JSONObject jsonObject = new JSONObject();
        try {
            Galleries galleries = galleriesService.selectById(albumId);
            galleries.setDelFlag(Const.DEL_FLAG_DELETE);
            galleriesService.updateById(galleries);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }

    //跳转到图片弹窗
    @RequestMapping(value = "/surveyor/img", method = RequestMethod.GET)
    public String viewImg(@RequestParam(required = false) Integer galleriesId, @RequestParam(required = false) Integer reportId, ModelMap modelMap) {
        EntityWrapper<Media> ew = getEntityWrapper();
        ew.addFilter("galleries_id={0}", galleriesId);
        List<Media> medias = mediaService.selectList(ew);

        PurchaseInspection inspection = purchaseInspectionService.selectByReportId(reportId);

        modelMap.put("medias", medias);
        modelMap.put("galleriesId", galleriesId);
        modelMap.put("albumName", galleriesService.selectById(galleriesId).getName());
        if (inspection.getSubmitStatus() == 1) {
            return "prepurchase/surveyor/inspection/imgView";
        }
        return "prepurchase/surveyor/inspection/imgEdit";
    }


    //删除照片
    @RequestMapping(value = "/surveyor/deleteImg", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject deleteImg(@RequestParam(required = false) Integer imgId) {
        JSONObject jsonObject = new JSONObject();
        try {

            int number = mediaService.deleteByMediaId(imgId);

            jsonObject.put("number", number);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }

    //添加照片
    @RequestMapping(value = "/surveyor/addImg", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject addImg(Media media) {
        JSONObject jsonObject = new JSONObject();
        try {
            media.setCreateDate(new Date());
            int number = mediaService.insertMedia(media);
            jsonObject.put("mes", true);
            jsonObject.put("number", number);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }

    //修改第四栏照片的提交状态
    @RequestMapping(value = "/surveyor/imgSubmit")
    @ResponseBody
    public JSONObject imgSubmit(@RequestParam (required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        try {
            InspectionReport report = iInspectionReportService.selectById(reportId);
            report.setSubmitStatus4(Const.REPORT_SUBMIT);
            iInspectionReportService.updateById(report);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("mes", false);
        }

        return jsonObject;
    }


    //添加或者更新   Surveyor’s summary
    @RequestMapping(value = "/surveyor/reportEditSummary")
    @ResponseBody
    public JSONObject updateReportSummary(ConditionInspection conditionInspection, @RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        try {
            conditionInspectionService.insertOrUpdate(conditionInspection);

            InspectionReport report = iInspectionReportService.selectById(reportId);
            report.setConditionInspectionId(conditionInspection.getId());
            report.setSubmitStatus5(Const.REPORT_SUBMIT);
            iInspectionReportService.updateById(report);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //添加或者更新   Technical appendix & equipment information
    @RequestMapping(value = "/surveyor/reportEditTechnical")
    @ResponseBody
    public JSONObject updateReportTechnical(TechnicalAppendix technicalAppendix) {
        JSONObject jsonObject = new JSONObject();
        try {

            technicalAppendixService.insertOrUpdateTechnicalAppendix(technicalAppendix);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }


    //获取   Technical appendix & equipment information的第一张表的Equipmet的列表信息
    @RequestMapping(value = "/surveyor/technicalModelList")
    @ResponseBody
    public JSONObject technicalModelList(@RequestParam (required = false) String catagory,@RequestParam(required = false)String title) {
        JSONObject jsonObject = new JSONObject();
        try {
            List<TechnicalModelContent> contents=technicalModelContentService.selectByCatagoryAndTitle(catagory,title);
            jsonObject.put("contents", contents);
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //添加或者更新Documents
    @RequestMapping(value = "/surveyor/reportEditDocument")
    @ResponseBody
    public JSONObject updateReportDocument(InspectionReport inspectionReport) {
        JSONObject jsonObject = new JSONObject();
        try {

            documentService.insertOrUpdateDocument(inspectionReport.getDocuments());
            jsonObject.put("mes", true);
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }

    //surveyour提交报告
    @RequestMapping(value = "/surveyor/submitReport")
    @ResponseBody
    public JSONObject submitReport(@RequestParam(required = false) Integer reportId) {
        JSONObject jsonObject = new JSONObject();
        try {
            PurchaseInspection inspection = purchaseInspectionService.selectByReportId(reportId);
            inspection.setSubmitStatus(Const.REPORT_SUBMIT);
            purchaseInspectionService.updateById(inspection);

            iInspectionReportService.downloadReportByReportId(reportId,endpoint,accessId,accessKey,bucket);

            jsonObject.put("mes", true);
            messageService.publicPreInspectionEnd(inspection.getId());
        } catch (Exception e) {
            jsonObject.put("mes", false);
            e.printStackTrace();
        }
        return jsonObject;
    }





    @RequestMapping(value = "/op/report", method = RequestMethod.GET)
    public String opReportList() {
        return "prepurchase/op/inspection/reportList";
    }

    @RequestMapping(value = "/op/report/list")
    @ResponseBody
    public JSONObject opReportList(ModelMap modelMap) {
        JSONObject jsonObject = new JSONObject();
        int id = getCurrentUser().getId();

        int start = 0;
        int length = 10;
        if (request.getParameter(Const.START) != null) {
            start = Integer.parseInt(request.getParameter(Const.START));
        }
        if (request.getParameter(Const.LENGTH) != null) {
            length = Integer.parseInt(request.getParameter(Const.LENGTH));
        }

        List<PurchaseInspection> inspections = purchaseInspectionService.selectByOpInspection(id, start, length);
        Integer total = purchaseInspectionService.getOpInspectionCount(id);

        jsonObject.put(Const.DRAW, request.getParameter(Const.DRAW));
        jsonObject.put(Const.RECORDSTOTAL, total);
        jsonObject.put(Const.RECORDSFILTERED, total);
        jsonObject.put(Const.NDATA, inspections);
        return jsonObject;
    }

    //获取报告的详细信息
    @RequestMapping(value = "/op/reportInfo", method = RequestMethod.GET)
    public String view(@RequestParam(required = false) Integer reportId,
                       ModelMap modelMap) {

        InspectionReport inspectionReport = iInspectionReportService.selectByPurchaseInspectionId(reportId);
        List<TechnicalAppendix> technicalAppendices = technicalAppendixService.selectListByReportId(reportId, "Vessel tank capacity");

        boolean flag = false;
        for (TechnicalAppendix t : technicalAppendices) {
            if (t.getTechnicalAppendixInfo() != null && t.getTechnicalAppendixInfo().size() > 0) {
                flag = true;
                break;
            }
        }

        List<GradeCondition> hullGrades=gradeConditionService.selectGradeConditionByType("船体");
        List<GradeCondition> machineGrades=gradeConditionService.selectGradeConditionByType("机械");

        PurchaseInspection purchaseInspection=purchaseInspectionService.selectByReportId(reportId);
        modelMap.put("totalGrade",purchaseInspection.getTotalGrade());
        modelMap.put("hullGrades", hullGrades);
        modelMap.put("machineGrades", machineGrades);
        modelMap.put("flag", flag);
        modelMap.put("report", inspectionReport);
        modelMap.put("technicalAppendices", technicalAppendices);

        return "prepurchase/op/inspection/reportInfo";
    }

    //跳转到图片弹窗
    @RequestMapping(value = "/op/viewImg", method = RequestMethod.GET)
    public String lookImg(@RequestParam(required = false) Integer galleriesId, ModelMap modelMap) {
        EntityWrapper<Media> ew = getEntityWrapper();
        ew.addFilter("galleries_id={0}", galleriesId);
        List<Media> medias = mediaService.selectList(ew);
        modelMap.put("medias", medias);
        modelMap.put("galleriesId", galleriesId);
        modelMap.put("albumName", galleriesService.selectById(galleriesId).getName());
        return "prepurchase/op/inspection/viewImg";
    }

    //获取相册的所有的图片
    @RequestMapping(value = "/op/viewImg", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject getImgs(@RequestParam(required = false) Integer galleriesId) {
        JSONObject jsonObject=new JSONObject();
        EntityWrapper<Media> ew = getEntityWrapper();
        ew.addFilter("galleries_id={0}", galleriesId);
        List<Media> medias = mediaService.selectList(ew);
        jsonObject.put("medias", medias);
        jsonObject.put("mes", true);


        return jsonObject;
    }

    //下载报告
    @RequestMapping(value = "/op/reportDownload", method = RequestMethod.GET)
    public String download(@RequestParam(required = false) Integer inspectionId) {
        try {
            String url=iInspectionReportService.downloadReportByReportId(inspectionId,endpoint,accessId,accessKey,bucket);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "prepurchase/op/inspection/viewImg";
    }



}