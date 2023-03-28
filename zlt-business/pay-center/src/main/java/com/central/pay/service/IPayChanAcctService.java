package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayChanAcct;

import java.util.Map;

/**
 * 支付通道关联平台支付账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayChanAcctService extends ISuperService<PayChanAcct> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayChanAcct> findList(Map<String, Object> params);
}

