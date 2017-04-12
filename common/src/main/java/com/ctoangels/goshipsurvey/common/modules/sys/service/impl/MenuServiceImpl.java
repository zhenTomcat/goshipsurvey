package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Menu;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.MenuMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName MenuServiceImpl.java
 * @Description:
 * @Date 2015年5月9日
 */
@Transactional(readOnly = true)
@Service
public class MenuServiceImpl extends SuperServiceImpl<MenuMapper, Menu> implements MenuService {

    @Autowired
    private MenuMapper menuMapper;
    public List<Menu> getHierarchyByPath(String url) {
        List<Menu> lists = new ArrayList<>(2);
        Menu menu = menuMapper.getByPath(url);
        if (menu != null) {
            if (menu.getParentId() != 0) {
                Menu parent = menuMapper.selectById(menu.getParentId());
                lists.add(parent);
            }
            lists.add(menu);
        }
        return lists;
    }
}
