package com.central.pay.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.pay.model.entity.PayChan;

import java.util.Map;

/**
 * 支付通道
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
public interface IPayChanService extends ISuperService<PayChan> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<PayChan> findList(Map<String, Object> params);
}

