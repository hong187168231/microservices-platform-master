package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.model.SysUser;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Property;

import java.util.List;
import java.util.Map;

public interface PropertyService extends ISuperService<Property> {
    PageResult<Property> findList(Map<String, Object> params);
    public List<Property> getList(Map<String, Object> params);
}
