package com.ctoangels.goshipsurvey.common.modules.go.service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.goshipsurvey.common.modules.go.entity.PublicShip;
import com.baomidou.framework.service.ISuperService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * PublicShip 表数据服务层接口
 */
public interface IPublicShipService extends ISuperService<PublicShip> {

    List<PublicShip> getSearchList(String keyword);

    List<PublicShip> getSearchListByColumns(String keyword, String[] columns);

    PublicShip getById(int id);

    List<PublicShip> getListByIMO(String imo);


}