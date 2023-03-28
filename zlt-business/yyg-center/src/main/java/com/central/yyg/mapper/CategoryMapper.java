package com.central.yyg.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.db.mapper.SuperMapper;
import com.central.yyg.model.entity.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface CategoryMapper extends SuperMapper<Category> {
    List<Category> findList(Page<Category> page, @Param("p") Map<String, Object> params);
    List<Category> getList(Map<String, Object> params);
}