package com.central.yyg.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.model.PageResult;
import com.central.common.service.impl.SuperServiceImpl;
import com.central.yyg.mapper.ProductImageMapper;
import com.central.yyg.model.entity.ProductImage;
import com.central.yyg.service.ProductImageService;
import org.apache.commons.collections4.MapUtils;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service("productImageService")
public class ProductImageServiceImpl extends SuperServiceImpl<ProductImageMapper,ProductImage> implements ProductImageService {
    @Override
    public PageResult<ProductImage> findList(Map<String, Object> params) {
        Page<ProductImage> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<ProductImage> list  =  baseMapper.findList(page, params);
        return PageResult.<ProductImage>builder().data(list).count(page.getTotal()).build();
    }
    @Override
    public List<ProductImage> getList(Map<String, Object> params) {
        return baseMapper.getList(params);
    }
}
