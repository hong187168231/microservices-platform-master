package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.UserAddress;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 收货地址
 * 
 * @author yixiu
 * @date 2023-02-25 13:29:28
 */
@Mapper
public interface UserAddressMapper extends SuperMapper<UserAddress> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<UserAddress> findList(Page<UserAddress> page, @Param("p") Map<String, Object> params);
}
