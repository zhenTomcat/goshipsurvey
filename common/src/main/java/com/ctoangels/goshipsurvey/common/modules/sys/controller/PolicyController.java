package com.ctoangels.goshipsurvey.common.modules.sys.controller;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.common.utils.BinaryUtil;
import com.aliyun.oss.model.MatchMode;
import com.aliyun.oss.model.PolicyConditions;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Sun.Han
 * @version 1.0
 * @Description:
 * @Date 2016年10月14日
 */
@Controller
@RequestMapping(value = "oss")
public class PolicyController {

    @Value("${oss.endpoint}")
    private String endpoint;

    @Value("${oss.accessId}")
    private String accessId;

    @Value("${oss.accessKey}")
    private String accessKey;
    @Value("${oss.bucket}")
    private String bucket;


    @RequestMapping(value = "/policy", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> get() {
        Map<String, Object> map = new HashMap<String, Object>();
        String dir = "goshipyard/";
        String host = "http://" + bucket + "." + endpoint;
        OSSClient client = new OSSClient(endpoint, accessId, accessKey);
        try {
            long expireTime = 3000;
            long expireEndTime = System.currentTimeMillis() + expireTime * 1000;
            Date expiration = new Date(expireEndTime);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println(sdf.format(expiration));

            PolicyConditions policyConds = new PolicyConditions();
            policyConds.addConditionItem(PolicyConditions.COND_CONTENT_LENGTH_RANGE, 0, 1048576000);
            policyConds.addConditionItem(MatchMode.StartWith, PolicyConditions.COND_KEY, dir);

            String postPolicy = client.generatePostPolicy(expiration, policyConds);
            byte[] binaryData = postPolicy.getBytes("utf-8");
            String encodedPolicy = BinaryUtil.toBase64String(binaryData);
            String postSignature = client.calculatePostSignature(postPolicy);

            map.put("accessid", accessId);
            map.put("policy", encodedPolicy);
            map.put("signature", postSignature);
            map.put("dir", dir);
            map.put("host", host);
            map.put("expire", String.valueOf(expireEndTime / 1000));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
