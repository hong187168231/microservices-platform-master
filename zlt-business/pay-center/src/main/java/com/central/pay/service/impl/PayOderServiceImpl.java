package com.central.pay.service.impl;

import com.central.pay.model.entity.PayOder;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayOderMapper;
import com.central.pay.service.IPayOderService;

/**
 * 支付订单
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayOderServiceImpl extends SuperServiceImpl<PayOderMapper, PayOder> implements IPayOderService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayOder> findList(Map<String, Object> params){
        Page<PayOder> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayOder> list  =  baseMapper.findList(page, params);
        return PageResult.<PayOder>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
