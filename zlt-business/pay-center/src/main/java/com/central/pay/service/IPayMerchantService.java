package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayMerchant;

import java.util.Map;

/**
 * 支付商代码表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayMerchantService extends ISuperService<PayMerchant> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayMerchant> findList(Map<String, Object> params);
}

