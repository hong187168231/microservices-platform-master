package com.central.pay.service.impl;

import com.central.pay.model.entity.PayChanAcct;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayChanAcctMapper;
import com.central.pay.service.IPayChanAcctService;

/**
 * 支付通道关联平台支付账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayChanAcctServiceImpl extends SuperServiceImpl<PayChanAcctMapper, PayChanAcct> implements IPayChanAcctService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayChanAcct> findList(Map<String, Object> params){
        Page<PayChanAcct> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayChanAcct> list  =  baseMapper.findList(page, params);
        return PageResult.<PayChanAcct>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
