package com.central.yyg.service.impl;

import com.central.yyg.model.entity.WinOrder;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.WinOrderMapper;
import com.central.yyg.service.IWinOrderService;

/**
 * 中奖订单表
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Slf4j
@Service
public class WinOrderServiceImpl extends SuperServiceImpl<WinOrderMapper, WinOrder> implements IWinOrderService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<WinOrder> findList(Map<String, Object> params){
        Page<WinOrder> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<WinOrder> list  =  baseMapper.findList(page, params);
        return PageResult.<WinOrder>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
