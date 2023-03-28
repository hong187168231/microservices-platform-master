package com.central.yyg.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.db.mapper.SuperMapper;
import com.central.yyg.model.entity.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface ProductMapper extends SuperMapper<Product> {
    List<Product> findList(Page<Product> page, @Param("p") Map<String, Object> params);
    int insertProduct(Product student);
}
