package com.ctoangels.goshipsurvey.common.modules.sys.mapper;

import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpData;
import com.baomidou.mybatisplus.mapper.AutoMapper;

/**
 *
 * IpData 表数据库控制层接口
 *
 */
public interface IpDataMapper extends AutoMapper<IpData> {


    IpData selectByIp(String ip);

}