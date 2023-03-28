package com.central.yyg.service;

import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Productorder;

import java.util.Map;

/**
 * 
 *
 * @author yixiu
 * @date 2023-02-25 13:44:31
 */
public interface IProductorderService extends ISuperService<Productorder> {
    /**
     * 列表
     * @param params
     * @return
     */
    PageResult<Productorder> findList(Map<String, Object> params);
}

