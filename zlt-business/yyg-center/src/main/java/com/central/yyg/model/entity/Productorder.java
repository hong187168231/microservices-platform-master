package com.central.yyg.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 
 *
 * @author yixiu
 * @date 2023-02-25 13:44:31
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("productorder")
public class Productorder extends SuperEntity {
    private static final long serialVersionUID=1L;

    private String productorderCode;
    private String productorderAddress;
    private String productorderDetailAddress;
    private String productorderPost;
    private String productorderReceiver;
    private String productorderMobile;
    private Date productorderPayDate;
    private Date productorderDeliveryDate;
    private Date productorderConfirmDate;
    private Integer productorderStatus;
    private Integer productorderUserId;
    @ApiModelProperty(value = "0：机器人，1：真实用户")
    private Integer robot;
    }
