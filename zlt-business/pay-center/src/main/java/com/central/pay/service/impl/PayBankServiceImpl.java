package com.central.pay.service.impl;

import com.central.pay.model.entity.PayBank;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayBankMapper;
import com.central.pay.service.IPayBankService;

/**
 * 支付银行表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayBankServiceImpl extends SuperServiceImpl<PayBankMapper, PayBank> implements IPayBankService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayBank> findList(Map<String, Object> params){
        Page<PayBank> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayBank> list  =  baseMapper.findList(page, params);
        return PageResult.<PayBank>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
