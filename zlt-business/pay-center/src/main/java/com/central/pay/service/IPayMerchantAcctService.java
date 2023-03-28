package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayMerchantAcct;

import java.util.Map;

/**
 * 支付商代码表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayMerchantAcctService extends ISuperService<PayMerchantAcct> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayMerchantAcct> findList(Map<String, Object> params);
}

