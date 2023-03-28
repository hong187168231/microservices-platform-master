package com.central.pay.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.pay.model.entity.PayBankCode;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 支付银行表关联支付商
 * 
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Mapper
public interface PayBankCodeMapper extends SuperMapper<PayBankCode> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<PayBankCode> findList(Page<PayBankCode> page, @Param("p") Map<String, Object> params);
}
