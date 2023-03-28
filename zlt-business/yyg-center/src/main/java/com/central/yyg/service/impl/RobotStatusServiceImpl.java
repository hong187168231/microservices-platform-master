package com.central.yyg.service.impl;

import com.central.yyg.model.entity.RobotStatus;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.RobotStatusMapper;
import com.central.yyg.service.IRobotStatusService;

/**
 * 是否开启机器人下单
 *
 * @author yixiu
 * @date 2023-02-25 21:19:03
 */
@Slf4j
@Service
public class RobotStatusServiceImpl extends SuperServiceImpl<RobotStatusMapper, RobotStatus> implements IRobotStatusService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<RobotStatus> findListByPage(Map<String, Object> params){
        Page<RobotStatus> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<RobotStatus> list  =  baseMapper.findList(page, params);
        return PageResult.<RobotStatus>builder().data(list).code(0).count(page.getTotal()).build();
    }
    @Override
    public List<RobotStatus> findList(Map<String, Object> params){
        return baseMapper.findList(params);
    }
}
