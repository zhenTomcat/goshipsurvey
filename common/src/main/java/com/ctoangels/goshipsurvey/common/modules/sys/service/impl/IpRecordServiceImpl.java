package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.IpRecordMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpRecord;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IIpRecordService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * IpRecord 表数据服务层接口实现类
 *
 */
@Service
public class IpRecordServiceImpl extends SuperServiceImpl<IpRecordMapper, IpRecord> implements IIpRecordService {


    @Override
    public void setIpAndUri(String ip, String uri) {

    }
}