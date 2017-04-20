package com.ctoangels.goshipsurvey.common.util;

import com.ctoangels.goshipsurvey.common.util.DataSources;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Created by lenovo on 2017/4/17.
 */
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE, ElementType.METHOD})
public @interface ChangeDataSourceAnnotataion {
    DataSources dataSource() default DataSources.GO;
}
