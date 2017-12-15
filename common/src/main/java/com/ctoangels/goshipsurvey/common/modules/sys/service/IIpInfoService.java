package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpInfo;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * IpInfo 表数据服务层接口
 *
 */
public interface IIpInfoService extends ISuperService<IpInfo> {

    void setIpAndUri(String ip,String uri);
}