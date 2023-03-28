package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.Activity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 活动类型
 * 
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Mapper
public interface ActivityMapper extends SuperMapper<Activity> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<Activity> findList(Page<Activity> page, @Param("p") Map<String, Object> params);
    List<Activity> findList(@Param("p") Map<String, Object> params);
}
