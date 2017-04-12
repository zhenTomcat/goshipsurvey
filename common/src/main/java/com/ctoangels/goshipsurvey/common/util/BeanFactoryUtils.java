package com.ctoangels.goshipsurvey.common.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.stereotype.Service;

/**
 * @author tangqian
 * @version 1.0
 */
@Service
public class BeanFactoryUtils implements BeanFactoryAware {

    private static BeanFactory beanFactory;

    @SuppressWarnings("static-access")
    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        this.beanFactory = beanFactory;
    }

    public static BeanFactory getFactory() {
        return beanFactory;
    }
}
