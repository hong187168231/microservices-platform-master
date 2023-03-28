package com.central.yyg.service;


import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.PropertyValue;
import com.central.yyg.model.vo.PropertyValueVo;

import java.util.List;
import java.util.Map;

public interface PropertyValueService extends ISuperService<PropertyValue> {
    public List<PropertyValueVo> getList(Map<String, Object> params);
}
