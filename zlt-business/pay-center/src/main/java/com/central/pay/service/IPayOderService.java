package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayOder;

import java.util.Map;

/**
 * 支付订单
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayOderService extends ISuperService<PayOder> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayOder> findList(Map<String, Object> params);
}

