package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.RobotStatus;

import java.util.List;
import java.util.Map;

/**
 * 是否开启机器人下单
 *
 * @author yixiu
 * @date 2023-02-25 21:19:03
 */
public interface IRobotStatusService extends ISuperService<RobotStatus> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<RobotStatus> findListByPage(Map<String, Object> params);
    List<RobotStatus> findList(Map<String, Object> params);
}

