package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.RobotStatus;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 是否开启机器人下单
 * 
 * @author yixiu
 * @date 2023-02-25 21:19:03
 */
@Mapper
public interface RobotStatusMapper extends SuperMapper<RobotStatus> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<RobotStatus> findList(Page<RobotStatus> page, @Param("p") Map<String, Object> params);

    List<RobotStatus> findList(@Param("p") Map<String, Object> params);
}
