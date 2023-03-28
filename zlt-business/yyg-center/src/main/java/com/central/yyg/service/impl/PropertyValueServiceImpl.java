package com.central.yyg.service.impl;

import com.central.common.service.impl.SuperServiceImpl;
import com.central.yyg.mapper.PropertyValueMapper;
import com.central.yyg.model.entity.PropertyValue;
import com.central.yyg.model.vo.PropertyValueVo;
import com.central.yyg.service.PropertyValueService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("propertyValueService")
public class PropertyValueServiceImpl extends SuperServiceImpl<PropertyValueMapper,PropertyValue> implements PropertyValueService {
    @Override
    public List<PropertyValueVo> getList(Map<String, Object> params){
        return baseMapper.getList( params);
    }
}
