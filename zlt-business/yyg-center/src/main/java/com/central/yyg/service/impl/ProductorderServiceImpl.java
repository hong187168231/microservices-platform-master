package com.central.yyg.service.impl;

import com.central.yyg.model.entity.Productorder;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.ProductorderMapper;
import com.central.yyg.service.IProductorderService;

/**
 * 
 *
 * @author yixiu
 * @date 2023-02-25 13:44:31
 */
@Slf4j
@Service
public class ProductorderServiceImpl extends SuperServiceImpl<ProductorderMapper, Productorder> implements IProductorderService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<Productorder> findList(Map<String, Object> params){
        Page<Productorder> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Productorder> list  =  baseMapper.findList(page, params);
        return PageResult.<Productorder>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
