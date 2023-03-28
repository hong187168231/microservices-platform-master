package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayBank;

import java.util.Map;

/**
 * 支付银行表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayBankService extends ISuperService<PayBank> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayBank> findList(Map<String, Object> params);
}

