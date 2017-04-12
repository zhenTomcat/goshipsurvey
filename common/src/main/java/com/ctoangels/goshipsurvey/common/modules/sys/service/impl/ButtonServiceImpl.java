package com.ctoangels.goshipsurvey.common.modules.sys.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.Button;
import com.ctoangels.goshipsurvey.common.modules.sys.mapper.ButtonMapper;
import com.ctoangels.goshipsurvey.common.modules.sys.service.ButtonService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName ButtonServiceImpl.java
 * @Description:
 * @Date 2015年5月9日
 */
@Transactional(readOnly = true)
@Service
public class ButtonServiceImpl extends SuperServiceImpl<ButtonMapper, Button> implements ButtonService {
}
