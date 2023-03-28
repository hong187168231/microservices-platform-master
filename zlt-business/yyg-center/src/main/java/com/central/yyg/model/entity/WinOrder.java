package com.central.yyg.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.Date;

/**
 * 中奖订单表
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("win_order")
public class WinOrder extends SuperEntity {
    private static final long serialVersionUID=1L;
    @NotEmpty(message = "中奖订单号不能为空！")
    @ApiModelProperty(value = "中奖订单号(大于开奖人数时为真实订单号，未到开奖数时候为机器人订单号，指定时为指定订单号)")
    private String winNumber;
    @NotBlank(message = "产品ID不能为空！")
    @ApiModelProperty(value = "产品ID")
    private Long productorderId;
    @NotBlank(message = "活动明细ID不能为空！")
    @ApiModelProperty(value = "活动明细ID")
    private Long activityInfoId;
    @NotBlank(message = "中奖用户不能为空！")
    @ApiModelProperty(value = "中奖用户(大于开奖人数时为真实用户，未到开奖数时候为机器人用户，指定时为指定用户)")
    private Long winUserId;
    }
