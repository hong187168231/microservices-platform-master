package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayBankUser;

import java.util.Map;

/**
 * 支付银行表关联平台账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayBankUserService extends ISuperService<PayBankUser> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayBankUser> findList(Map<String, Object> params);
}

