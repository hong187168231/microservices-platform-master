package com.central.yyg.service.impl;

import com.central.common.model.PageResult;
import com.central.common.service.impl.SuperServiceImpl;
import com.central.yyg.mapper.PropertyMapper;
import com.central.yyg.model.entity.Property;
import com.central.yyg.service.PropertyService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.commons.collections4.MapUtils;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("propertyService")
public class PropertyServiceImpl extends SuperServiceImpl<PropertyMapper,Property> implements PropertyService {
    @Override
    public PageResult<Property> findList(Map<String, Object> params){
        Page<Property> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Property> list  =  baseMapper.findList(page, params);
        return PageResult.<Property>builder().data(list).count(page.getTotal()).build();
    }
    @Override
    public List<Property> getList(Map<String, Object> params){
        return baseMapper.getList( params);
    }
}
