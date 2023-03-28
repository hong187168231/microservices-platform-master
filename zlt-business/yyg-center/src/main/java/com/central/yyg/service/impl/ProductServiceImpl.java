package com.central.yyg.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.model.PageResult;
import com.central.yyg.mapper.ProductMapper;
import com.central.yyg.model.entity.Product;
import com.central.yyg.model.entity.ProductImage;
import com.central.yyg.model.entity.PropertyValue;
import com.central.yyg.service.ProductImageService;
import com.central.yyg.service.ProductService;
import com.central.yyg.service.PropertyValueService;
import org.apache.commons.collections4.MapUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.central.common.service.impl.SuperServiceImpl;
import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("productService")
public class ProductServiceImpl extends SuperServiceImpl<ProductMapper, Product> implements ProductService {
    @Resource(name = "propertyValueService")
    private PropertyValueService propertyValueService;
    @Resource(name = "productImageService")
    private ProductImageService productImageService;
    @Override
    public PageResult<Product> findList(Map<String, Object> params){
        Page<Product> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Product> list  =  baseMapper.findList(page, params);
        return PageResult.<Product>builder().data(list).count(page.getTotal()).build();
    }
    //当出现Exception时，进行事务回滚
    @Transactional(rollbackFor = Exception.class)
//当出现RunTimeException时，不进行事务回滚
//    @Transactional(notRollbackFor=RunTimeException.class)
    @Override
    public void saveOrUpdateProduct(Product student, List<PropertyValue> propertyValueList, List<ProductImage> productImageList, List<ProductImage> productDetailsImageList){
        Long product_id;
        if(null!=student.getId()&&student.getId()>0){
            product_id = student.getId();
            baseMapper.updateById(student);
        }else {
            product_id = (long) baseMapper.insertProduct(student);
        }

        for (PropertyValue propertyValue : propertyValueList) {//产品属性
            propertyValue.setPropertyvalue_product_id(product_id);
        }
        if(null!=propertyValueList&&propertyValueList.size()>0) {
            propertyValueService.saveOrUpdateBatch(propertyValueList);
        }
        for (ProductImage productImage : productImageList) {//整合产品子信息-产品预览图片
            productImage.setProductImage_type((byte) 0);
            productImage.setProductimage_product_id(product_id);
        }
        if(null!=productImageList&&productImageList.size()>0) {
            productImageService.saveOrUpdateBatch(productImageList);
        }
        for (ProductImage productImage : productDetailsImageList) {//整合产品子信息-产品详情图片
            productImage.setProductImage_type((byte) 0);
            productImage.setProductimage_product_id(product_id);
        }
        if(null!=productDetailsImageList&&productDetailsImageList.size()>0) {
            productImageService.saveOrUpdateBatch(productDetailsImageList);
        }
    }

}
