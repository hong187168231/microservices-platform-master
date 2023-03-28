package com.central.pay.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.pay.model.entity.PayOder;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 支付订单
 * 
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Mapper
public interface PayOderMapper extends SuperMapper<PayOder> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<PayOder> findList(Page<PayOder> page, @Param("p") Map<String, Object> params);
}
