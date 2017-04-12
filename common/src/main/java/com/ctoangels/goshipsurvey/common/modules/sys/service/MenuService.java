package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Menu;

import java.util.List;

/**
 * Created by dongs on 2016/11/21.
 */
public interface MenuService extends ISuperService<Menu> {
    List<Menu> getHierarchyByPath(String url);
}
