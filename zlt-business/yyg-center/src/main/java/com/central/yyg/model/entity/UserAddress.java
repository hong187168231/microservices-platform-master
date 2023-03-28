package com.central.yyg.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 收货地址
 *
 * @author yixiu
 * @date 2023-02-25 13:29:28
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("user_address")
public class UserAddress extends SuperEntity {
    private static final long serialVersionUID=1L;

        private Date createTime;
        private Date updateTime;
        private String createBy;
        private String updateBy;
        private String address;
        private String name;
        private String telephone;
        private String email;
        private Long userId;
    }
