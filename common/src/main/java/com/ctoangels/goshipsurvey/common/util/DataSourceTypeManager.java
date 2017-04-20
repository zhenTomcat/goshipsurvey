package com.ctoangels.goshipsurvey.common.util;

/**
 * Created by lenovo on 2017/4/17.
 */
public class DataSourceTypeManager {
    private static final ThreadLocal<DataSources> dataSourceTypes = new ThreadLocal<DataSources>() {
        @Override
        protected DataSources initialValue() {
            return DataSources.GOSHIPSURVEY;
        }
    };

    public static DataSources get() {
        return dataSourceTypes.get();
    }

    public static void set(DataSources dataSourceType) {
        dataSourceTypes.set(dataSourceType);
    }

    public static void reset() {
        dataSourceTypes.set(DataSources.GOSHIPSURVEY);
    }
}
