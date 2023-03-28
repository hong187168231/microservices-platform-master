package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayBankCode;

import java.util.Map;

/**
 * 支付银行表关联支付商
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayBankCodeService extends ISuperService<PayBankCode> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayBankCode> findList(Map<String, Object> params);
}

