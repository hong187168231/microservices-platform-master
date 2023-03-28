package com.central.pay.service.impl;

import com.central.pay.model.entity.PayUser;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.pay.mapper.PayUserMapper;
import com.central.pay.service.IPayUserService;

/**
 * 平台支付账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@Service
public class PayUserServiceImpl extends SuperServiceImpl<PayUserMapper, PayUser> implements IPayUserService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<PayUser> findList(Map<String, Object> params){
        Page<PayUser> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<PayUser> list  =  baseMapper.findList(page, params);
        return PageResult.<PayUser>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
