package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.TechnicalAppendix;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.DocumentMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Document;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IDocumentService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * Document 表数据服务层接口实现类
 *
 */
@Service
public class DocumentServiceImpl extends SuperServiceImpl<DocumentMapper, Document> implements IDocumentService {


    @Autowired
    private IDocumentService documentService;

    @Override
    public Boolean createDocuments(Integer reportId) {

        EntityWrapper<Document> ew = new EntityWrapper<>();
        ew.addFilter("inspection_report_id={0}", reportId);
        List<Document> documents = documentService.selectList(ew);
        if (documents.size() <= 0) {
            for (int i = 0; i < 12; i++) {
                Document document=new Document();
                document.setInspectionReportId(reportId);
                if (i == 0) {
                    document.setTitle("Class status");
                    documentService.insert(document);
                    continue;
                } else if (i == 1) {
                    document.setTitle("HPVQ");
                    documentService.insert(document);
                    continue;
                } else if (i == 2) {
                    document.setTitle("Crew list");
                    documentService.insert(document);
                    continue;
                } else if (i == 3) {
                    document.setTitle("Certificate of fitness appendix for list of cargoes");
                    documentService.insert(document);
                    continue;
                } else if (i == 4) {
                    document.setTitle("Voyage reports showing speed and consumptions");
                    documentService.insert(document);
                    continue;
                } else if (i == 5) {
                    document.setTitle("Copy of last CSR");
                    documentService.insert(document);
                    continue;
                } else if (i == 6) {
                    document.setTitle("Capacity plan");
                    documentService.insert(document);
                    continue;
                } else if (i == 7) {
                    document.setTitle("Mooring plan");
                    documentService.insert(document);
                    continue;
                } else if (i == 8) {
                    document.setTitle("Painting scheme");
                    documentService.insert(document);
                    continue;
                } else if (i == 9) {
                    document.setTitle("IOPP");
                    documentService.insert(document);
                    continue;
                } else if (i == 10) {
                    document.setTitle("Maker listn");
                    documentService.insert(document);
                    continue;
                } else if (i == 11) {
                    document.setTitle("Cargo history");
                    documentService.insert(document);
                    continue;
                }

            }
        }

        return null;
    }

    @Override
    public Boolean insertOrUpdateDocument(List<Document> documents) {
        for (Document d:documents){
            documentService.insertOrUpdate(d);
        }
        return true;
    }
}