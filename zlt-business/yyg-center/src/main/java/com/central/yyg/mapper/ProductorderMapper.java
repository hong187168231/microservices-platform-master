package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.Productorder;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author yixiu
 * @date 2023-02-25 13:44:31
 */
@Mapper
public interface ProductorderMapper extends SuperMapper<Productorder> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<Productorder> findList(Page<Productorder> page, @Param("p") Map<String, Object> params);
}
