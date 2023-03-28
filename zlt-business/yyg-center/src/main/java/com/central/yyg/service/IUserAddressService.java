package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.UserAddress;

import java.util.Map;

/**
 * 收货地址
 *
 * @author yixiu
 * @date 2023-02-25 13:29:28
 */
public interface IUserAddressService extends ISuperService<UserAddress> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<UserAddress> findList(Map<String, Object> params);
}

