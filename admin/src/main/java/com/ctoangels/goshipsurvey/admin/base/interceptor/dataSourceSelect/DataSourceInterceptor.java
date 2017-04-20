package com.ctoangels.goshipsurvey.admin.base.interceptor.dataSourceSelect;

import com.ctoangels.goshipsurvey.common.modules.sys.controller.RightController;
import com.ctoangels.goshipsurvey.common.util.DataSourceTypeManager;
import com.ctoangels.goshipsurvey.common.util.DataSources;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by lenovo on 2017/4/17.
 */
public class DataSourceInterceptor {

    private static Logger logger = LoggerFactory.getLogger(DataSourceInterceptor.class);

    public DataSourceInterceptor() {
        logger.info("DataSourceInterceptor被启动了");
    }

    public void doBefore() {
        DataSourceTypeManager.set(DataSources.GO);
    }

    public void doAfter() {
        DataSourceTypeManager.set(DataSources.GOSHIPSURVEY);
    }
}