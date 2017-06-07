package com.ctoangels.goshipsurvey.common.modules.prepurchase.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.User;
import com.ctoangels.goshipsurvey.common.util.Const;

/**
 *
 *
 *
 */
@TableName("t_purchase_inspection")
public class PurchaseInspection implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 检查的id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 询价id
     */
    @TableField(value = "purchase_quo_id")
    private Integer purchaseQuoId;

    /**  */
    @TableField(value = "ship_id")
    private Integer shipId;

    /**
     * suvery的公司id
     */
    @TableField(value = "company_id")
    private Integer companyId;

    /**
     * surveyor的id
     */
    @TableField(value = "survey_id")
    private Integer surveyId;

    /**  */
    @TableField(value = "op_id")
    private Integer opId;

    /**
     * 免责声明
     */
    private String loi;

    /**
     * 护照
     */
    private String passport;

    /**
     * 创建日期
     */
    @TableField(value = "create_date")
    private Date createDate;

    /**
     * 创建者
     */
    @TableField(value = "create_by")
    private String createBy;

    /**
     * 修改日期
     */
    @TableField(value = "update_date")
    private Date updateDate;

    /**
     * 修改者
     */
    @TableField(value = "update_by")
    private String updateBy;

    /**  */
    @TableField(value = "del_flag")
    private Integer delFlag;

    /**
     * op给surveyor的评分
     */
    @TableField(value = "company_grade")
    private String companyGrade;

    /**
     * 备注
     */
    private String remark;

    /**
     * 检查报告id
     */
    @TableField(value = "inspection_report_id")
    private Integer inspectionReportId;

    /**
     * surveyor给op的评分
     */
    @TableField(value = "op_grade")
    private String opGrade;

    @TableField(value = "user_id")
    private Integer userId;

    @TableField(value = "loi_url")
    private String loiUrl;

    @TableField(value = "passport_url")
    private String passportUrl;

    /**
     * 报告提交状态
     */
    @TableField(value = "submit_status")
    private Integer submitStatus;

    @TableField(exist = false)
    private ShipDetail shipDetail;

    @TableField(exist = false)
    private PurchaseQuotation purchaseQuotation;

    @TableField(exist = false)
    private Surveyor surveyor;

    @TableField(exist = false)
    private User op;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPurchaseQuoId() {
        return this.purchaseQuoId;
    }

    public void setPurchaseQuoId(Integer purchaseQuoId) {
        this.purchaseQuoId = purchaseQuoId;
    }

    public Integer getShipId() {
        return this.shipId;
    }

    public void setShipId(Integer shipId) {
        this.shipId = shipId;
    }

    public Integer getCompanyId() {
        return this.companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getSurveyId() {
        return this.surveyId;
    }

    public void setSurveyId(Integer surveyId) {
        this.surveyId = surveyId;
    }

    public Integer getOpId() {
        return this.opId;
    }

    public void setOpId(Integer opId) {
        this.opId = opId;
    }

    public String getLoi() {
        return this.loi;
    }

    public void setLoi(String loi) {
        this.loi = loi;
    }

    public String getPassport() {
        return this.passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public Date getCreateDate() {
        return this.createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return this.createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getUpdateDate() {
        return this.updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateBy() {
        return this.updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Integer getDelFlag() {
        return this.delFlag;
    }

    public void setDelFlag(Integer delFlag) {
        this.delFlag = delFlag;
    }

    public String getCompanyGrade() {
        return this.companyGrade;
    }

    public void setCompanyGrade(String companyGrade) {
        this.companyGrade = companyGrade;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getInspectionReportId() {
        return this.inspectionReportId;
    }

    public void setInspectionReportId(Integer inspectionReportId) {
        this.inspectionReportId = inspectionReportId;
    }

    public String getOpGrade() {
        return this.opGrade;
    }

    public void setOpGrade(String opGrade) {
        this.opGrade = opGrade;
    }

    public void setCreateInfo(String userName) {
        this.createDate = new Date();
        this.createBy = userName;
        this.updateDate = new Date();
        this.updateBy = userName;
        this.delFlag = Const.DEL_FLAG_NORMAL;
    }

    public void setUpdateInfo(String userName) {
        this.updateDate = new Date();
        this.updateBy = userName;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public ShipDetail getShipDetail() {
        return shipDetail;
    }

    public void setShipDetail(ShipDetail shipDetail) {
        this.shipDetail = shipDetail;
    }

    public PurchaseQuotation getPurchaseQuotation() {
        return purchaseQuotation;
    }

    public void setPurchaseQuotation(PurchaseQuotation purchaseQuotation) {
        this.purchaseQuotation = purchaseQuotation;
    }

    public Surveyor getSurveyor() {
        return surveyor;
    }

    public void setSurveyor(Surveyor surveyor) {
        this.surveyor = surveyor;
    }

    public User getOp() {
        return op;
    }

    public void setOp(User op) {
        this.op = op;
    }

    public Integer getSubmitStatus() {
        return submitStatus;
    }

    public void setSubmitStatus(Integer submitStatus) {
        this.submitStatus = submitStatus;
    }

    public String getLoiUrl() {
        return loiUrl;
    }

    public void setLoiUrl(String loiUrl) {
        this.loiUrl = loiUrl;
    }

    public String getPassportUrl() {
        return passportUrl;
    }

    public void setPassportUrl(String passportUrl) {
        this.passportUrl = passportUrl;
    }
}
