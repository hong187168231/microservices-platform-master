package com.central.yyg.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.db.mapper.SuperMapper;
import com.central.yyg.model.entity.ProductImage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface ProductImageMapper extends SuperMapper<ProductImage> {
    List<ProductImage> findList(Page<ProductImage> page, @Param("p") Map<String, Object> params);

    List<ProductImage> getList( @Param("p") Map<String, Object> params);
}
