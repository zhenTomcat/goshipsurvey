package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpData;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.IpDataMapper;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.sys.mapper.IpInfoMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.IpInfo;
import com.ctoangels.goshipsurvey.common.modules.sys.service.IIpInfoService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

/**
 *
 * IpInfo 表数据服务层接口实现类
 *
 */
@Service
public class IpInfoServiceImpl extends SuperServiceImpl<IpInfoMapper, IpInfo> implements IIpInfoService {

    @Autowired
    private IpDataMapper ipDataMapper;

    @Autowired
    private IpInfoMapper ipInfoMapper;

    @Override
    public void setIpAndUri(String ip, String uri) {
        IpInfo ipInfo= getAddressByIP(ip);
        if(ipInfo!=null && ipInfo.getCode()==0){

            ipInfo.setDelFlag(Const.DEL_FLAG_NORMAL);
            ipInfo.setCreateDate(new Date());
            ipInfoMapper.insert(ipInfo);

            IpData ipData=ipInfo.getData();
            ipData.setUri(uri);
            ipData.setIpRecordId(ipInfo.getId());
            ipData.setDelFlag(Const.DEL_FLAG_NORMAL);
            ipData.setCreateDate(new Date());
            ipDataMapper.insert(ipData);

        }
    }

    public IpInfo getAddressByIP(String ip) {
        try
        {

            String strIP = "139.224.62.32";
            URL url = new URL( "http://ip.taobao.com/service/getIpInfo.php?ip="+strIP);
            URLConnection conn = url.openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf8"));
            String line = null;
            StringBuffer result = new StringBuffer();
            while((line = reader.readLine()) != null)
            {
                result.append(line);
            }

            reader.close();
            IpInfo ipInfo= JSONObject.parseObject(result.toString(),IpInfo.class);
            return ipInfo;
        }
        catch( IOException e)
        {
            return null;
        }
    }
}