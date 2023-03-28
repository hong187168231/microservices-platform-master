package com.central.pay.service.impl;

import com.central.pay.model.entity.PayChan;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayChanMapper;
import com.central.pay.service.IPayChanService;

/**
 * 支付通道
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayChanServiceImpl extends SuperServiceImpl<PayChanMapper, PayChan> implements IPayChanService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayChan> findList(Map<String, Object> params){
        Page<PayChan> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayChan> list  =  baseMapper.findList(page, params);
        return PageResult.<PayChan>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
