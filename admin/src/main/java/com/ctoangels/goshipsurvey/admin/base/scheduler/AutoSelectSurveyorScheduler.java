package com.ctoangels.goshipsurvey.admin.base.scheduler;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IPurchaseInspectionService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by lenovo on 2017/7/7.
 */
@Component
@Lazy(value = false)
public class AutoSelectSurveyorScheduler {

    @Autowired
    IPurchaseInspectionService iPurchaseInspectionService;

    private Logger logger = Logger.getLogger(AutoSelectSurveyorScheduler.class);

   /* @Scheduled(cron = "0 55 23 * * ?")
    public void autoSelectSurveyor() {
        logger.info("自动选择验船师... " + new Date());
        iPurchaseInspectionService.autoSelectSurveyors();

    }*/

}
