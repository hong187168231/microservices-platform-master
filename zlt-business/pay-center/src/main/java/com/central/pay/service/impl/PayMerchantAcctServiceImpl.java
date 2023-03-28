package com.central.pay.service.impl;

import com.central.pay.model.entity.PayMerchantAcct;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayMerchantAcctMapper;
import com.central.pay.service.IPayMerchantAcctService;

/**
 * 支付商代码表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayMerchantAcctServiceImpl extends SuperServiceImpl<PayMerchantAcctMapper, PayMerchantAcct> implements IPayMerchantAcctService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayMerchantAcct> findList(Map<String, Object> params){
        Page<PayMerchantAcct> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayMerchantAcct> list  =  baseMapper.findList(page, params);
        return PageResult.<PayMerchantAcct>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
