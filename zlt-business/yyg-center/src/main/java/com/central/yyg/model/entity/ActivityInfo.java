package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * 活动明细
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("activity_info")
public class ActivityInfo extends SuperEntity {
    private static final long serialVersionUID=1L;
    @ApiModelProperty(value = "产品ID")
    @NotNull(message = "产品ID不能为空！")
    private Long productorderId;
    @ApiModelProperty(value = "活动ID")
    @NotNull(message = "活动ID不能为空！")
    private Long activityId;
    @Min(value = 0,message = "活动商品单价必须大于等于0！")
    @ApiModelProperty(value = "活动商品单价")
    private Double activityAmount;
    @Min(value = 0,message = "真实开奖人数必须大于等于0！")
    @ApiModelProperty(value = "真实开奖人数不包括机器人数")
    private Integer startwinNumber;

    @NotNull(message = "活动开始时间不能为空！")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @ApiModelProperty(value = "活动开始时间")
    private Date startTime;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @ApiModelProperty(value = "活动结束时间(为空时为无限活动)")
    private Date endTime;
    @ApiModelProperty(value = "结算状态")
    @NotNull(message = "0未结算，1结算中，2结算完成！")
    private Integer status;
    }
