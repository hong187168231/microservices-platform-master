package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.ActivityInfo;
import com.central.yyg.model.vo.ActivityInfoVo;

import java.util.List;
import java.util.Map;

/**
 * 活动明细
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
public interface IActivityInfoService extends ISuperService<ActivityInfo> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<ActivityInfoVo> findListByPage(Map<String, Object> params);
    List<ActivityInfoVo> findList(Map<String, Object> params);
}

