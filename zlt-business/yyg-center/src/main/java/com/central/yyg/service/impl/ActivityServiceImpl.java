package com.central.yyg.service.impl;

import com.central.yyg.model.entity.Activity;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.ActivityMapper;
import com.central.yyg.service.IActivityService;

/**
 * 活动类型
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Slf4j
@Service
public class ActivityServiceImpl extends SuperServiceImpl<ActivityMapper, Activity> implements IActivityService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<Activity> findListPage(Map<String, Object> params){
        Page<Activity> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Activity> list  =  baseMapper.findList(page, params);
        return PageResult.<Activity>builder().data(list).code(0).count(page.getTotal()).build();
    }

    @Override
    public List<Activity> findList(Map<String, Object> params){
        return baseMapper.findList(params);
    }
}
