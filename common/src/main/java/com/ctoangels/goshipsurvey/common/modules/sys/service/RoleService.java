package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.baomidou.framework.service.ISuperService;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Role;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.RoleTree;

import java.util.List;

public interface RoleService extends ISuperService<Role> {


    List<RoleTree> listTreeData(Integer roleId);

    void editRight(String selRes, Integer roleId);
}
