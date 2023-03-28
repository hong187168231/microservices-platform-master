package com.central.pay.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 支付银行表关联平台账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("pay_bank_user")
public class PayBankUser extends SuperEntity {
    private static final long serialVersionUID=1L;

        private Long bankId;
        private String platformAcct;
        private Integer status;
    }
