package com.ctoangels.goshipsurvey.common.modules.sys.service;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpRecord;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * IpRecord 表数据服务层接口
 *
 */
public interface IIpRecordService extends ISuperService<IpRecord> {

    void setIpAndUri(String ip,String uri);
}