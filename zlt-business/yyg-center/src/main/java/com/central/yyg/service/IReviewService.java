package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Review;

import java.util.Map;

/**
 * 
 *
 * @author yixiu
 * @date 2023-02-24 22:15:54
 */
public interface IReviewService extends ISuperService<Review> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<Review> findList(Map<String, Object> params);
}

