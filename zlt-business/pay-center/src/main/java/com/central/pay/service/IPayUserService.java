package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayUser;

import java.util.Map;

/**
 * 平台支付账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayUserService extends ISuperService<PayUser> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayUser> findList(Map<String, Object> params);
}

