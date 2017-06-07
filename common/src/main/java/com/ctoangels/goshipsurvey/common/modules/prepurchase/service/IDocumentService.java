package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Document;
import com.baomidou.framework.service.ISuperService;

import java.util.List;

/**
 *
 * Document 表数据服务层接口
 *
 */
public interface IDocumentService extends ISuperService<Document> {

    Boolean createDocuments(Integer reportId);

    Boolean insertOrUpdateDocument(List<Document> documents);
}