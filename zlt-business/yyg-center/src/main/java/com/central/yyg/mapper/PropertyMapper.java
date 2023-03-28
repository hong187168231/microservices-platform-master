package com.central.yyg.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.db.mapper.SuperMapper;
import com.central.yyg.model.entity.Property;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface PropertyMapper extends SuperMapper<Property> {
    List<Property> findList(Page<Property> page, @Param("p") Map<String, Object> params);
    List<Property> getList(@Param("p") Map<String, Object> params);
}
