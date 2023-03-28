package com.central.yyg.service.impl;

import com.central.yyg.model.entity.UserAddress;
import org.springframework.stereotype.Service;
import com.central.common.model.PageResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.service.impl.SuperServiceImpl;

import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.MapUtils;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.mapper.UserAddressMapper;
import com.central.yyg.service.IUserAddressService;

/**
 * 收货地址
 *
 * @author yixiu
 * @date 2023-02-25 13:29:28
 */
@Slf4j
@Service
public class UserAddressServiceImpl extends SuperServiceImpl<UserAddressMapper, UserAddress> implements IUserAddressService {
    /**
     * 列表
     * @param params
     * @return
     */
    @Override
    public PageResult<UserAddress> findList(Map<String, Object> params){
        Page<UserAddress> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<UserAddress> list  =  baseMapper.findList(page, params);
        return PageResult.<UserAddress>builder().data(list).code(0).count(page.getTotal()).build();
    }
}
