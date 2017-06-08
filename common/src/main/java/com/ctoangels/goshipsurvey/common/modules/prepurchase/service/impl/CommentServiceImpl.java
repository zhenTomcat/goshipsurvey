package com.ctoangels.goshipsurvey.common.modules.prepurchase.service.impl;

import org.springframework.stereotype.Service;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.mapper.CommentMapper;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.Comment;
import com.ctoangels.goshipsurvey.common.modules.prepurchase.service.ICommentService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Comment 表数据服务层接口实现类
 *
 */
@Service
public class CommentServiceImpl extends SuperServiceImpl<CommentMapper, Comment> implements ICommentService {


}