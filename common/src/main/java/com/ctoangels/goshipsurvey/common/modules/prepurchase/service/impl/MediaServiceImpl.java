package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Galleries;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IGalleriesService;
import com.ctoangels.goshipsurvey.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.MediaMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Media;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.IMediaService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.Date;

/**
 *
 * Media 表数据服务层接口实现类
 *
 */
@Service
public class MediaServiceImpl extends SuperServiceImpl<MediaMapper, Media> implements IMediaService {


    @Autowired
    private MediaMapper mediaMapper;

    @Autowired
    private IGalleriesService galleriesService;

    @Override
    public Integer insertMedia(Media media) {
        media.setCreateDate(new Date());
        media.setDelFlag(Const.DEL_FLAG_NORMAL);
        String fileName=media.getFileName();

        String fileType=fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
        media.setFileType(fileType);

        mediaMapper.insert(media);

        Galleries galleries=galleriesService.selectById(media.getGalleriesId());
        int number=galleries.getNumber()+1;
        galleries.setNumber(galleries.getNumber()+1);
        galleriesService.updateById(galleries);

        return number;
    }

    @Override
    public Integer deleteByMediaId(int mediaId) {

        Media media=mediaMapper.selectById(mediaId);
        media.setDelFlag(Const.DEL_FLAG_DELETE);
        mediaMapper.updateById(media);

        Galleries galleries= galleriesService.selectById(media.getGalleriesId());
        int number=galleries.getNumber()-1;
        galleries.setNumber(galleries.getNumber()-1);
        galleriesService.updateById(galleries);
        return number;
    }
}