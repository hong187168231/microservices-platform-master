package com.central.yyg.service.impl;

import com.central.yyg.model.entity.ActivityInfo;
import com.central.yyg.model.vo.ActivityInfoVo;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.ActivityInfoMapper;
import com.central.yyg.service.IActivityInfoService;

/**
 * 活动明细
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Slf4j
@Service
public class ActivityInfoServiceImpl extends SuperServiceImpl<ActivityInfoMapper, ActivityInfo> implements IActivityInfoService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<ActivityInfoVo> findListByPage(Map<String, Object> params){
        Page<ActivityInfoVo> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<ActivityInfoVo> list  =  baseMapper.findList(page, params);
        return PageResult.<ActivityInfoVo>builder().data(list).code(0).count(page.getTotal()).build();
    }

    @Override
    public List<ActivityInfoVo> findList(Map<String, Object> params){
        return baseMapper.findList(params);
    }
}
