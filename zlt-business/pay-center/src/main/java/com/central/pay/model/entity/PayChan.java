package com.central.pay.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 支付通道
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("pay_chan")
public class PayChan extends SuperEntity {
    private static final long serialVersionUID=1L;

        private Long payMerchantId;
        private String payMerchantCode;
        private String payChanNameCn;
        private String payChanNameEn;
        private String payChanNameKh;
        private String payChanNameVn;
        private String payChanCode;
    }
