package com.central.yyg.service;


import com.central.common.model.PageResult;
import com.central.common.model.SysUser;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Product;
import com.central.yyg.model.entity.ProductImage;
import com.central.yyg.model.entity.PropertyValue;

import java.util.List;
import java.util.Map;

public interface ProductService extends ISuperService<Product> {
    PageResult<Product> findList(Map<String, Object> params);
    void saveOrUpdateProduct(Product student, List<PropertyValue> propertyValueList, List<ProductImage> productImageList, List<ProductImage> productDetailsImageList);
}
