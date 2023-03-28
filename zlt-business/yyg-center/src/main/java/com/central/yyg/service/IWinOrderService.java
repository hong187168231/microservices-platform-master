package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.WinOrder;

import java.util.Map;

/**
 * 中奖订单表
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
public interface IWinOrderService extends ISuperService<WinOrder> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<WinOrder> findList(Map<String, Object> params);
}

