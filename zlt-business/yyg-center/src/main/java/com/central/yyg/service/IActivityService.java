package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Activity;

import java.util.List;
import java.util.Map;

/**
 * 活动类型
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
public interface IActivityService extends ISuperService<Activity> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<Activity> findListPage(Map<String, Object> params);
    List<Activity> findList(Map<String, Object> params);
}

