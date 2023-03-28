package com.central.yyg.service;


import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.ProductImage;

import java.util.List;
import java.util.Map;

public interface ProductImageService extends ISuperService<ProductImage> {
    public PageResult<ProductImage> findList(Map<String, Object> params);
    public List<ProductImage> getList(Map<String, Object> params);
}
