package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.Review;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author yixiu
 * @date 2023-02-24 22:15:54
 */
@Mapper
public interface ReviewMapper extends SuperMapper<Review> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<Review> findList(Page<Review> page, @Param("p") Map<String, Object> params);
}
