package com.central.pay.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 支付商代码表
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("pay_merchant_acct")
public class PayMerchantAcct extends SuperEntity {
    private static final long serialVersionUID=1L;

        private String payMerchantCode;
        private String platformAcct;
        private String merchantCode;
        private String merchantKey;
        private String pageBackUrl;
        private String notifyUrl;
        private Integer status;
    }
