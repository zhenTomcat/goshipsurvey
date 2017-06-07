package com.ctoangels.goshipsurvey.common.modules.prepurchase.service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Media;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * Media 表数据服务层接口
 *
 */
public interface IMediaService extends ISuperService<Media> {

    Integer insertMedia(Media media);

    Integer deleteByMediaId(int mediaId);

}