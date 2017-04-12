package com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.impl;

import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.entity.Company;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.mapper.CompanyMapper;
import com.ctoangels.goshipsurvey.common.modules.goshipsurvey.service.ICompanyService;
import org.springframework.stereotype.Service;

import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * Company 表数据服务层接口实现类
 *
 */
@Service
public class CompanyServiceImpl extends SuperServiceImpl<CompanyMapper, Company> implements ICompanyService {


}