package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.central.yyg.model.entity.PropertyValue;
import com.central.yyg.model.vo.PropertyValueVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface PropertyValueMapper extends SuperMapper<PropertyValue> {
    List<PropertyValueVo> getList(@Param("p") Map<String, Object> params);
}
