package com.central.pay.service.impl;

import com.central.pay.model.entity.PayBankCode;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayBankCodeMapper;
import com.central.pay.service.IPayBankCodeService;

/**
 * 支付银行表关联支付商
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayBankCodeServiceImpl extends SuperServiceImpl<PayBankCodeMapper, PayBankCode> implements IPayBankCodeService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayBankCode> findList(Map<String, Object> params){
        Page<PayBankCode> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayBankCode> list  =  baseMapper.findList(page, params);
        return PageResult.<PayBankCode>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
