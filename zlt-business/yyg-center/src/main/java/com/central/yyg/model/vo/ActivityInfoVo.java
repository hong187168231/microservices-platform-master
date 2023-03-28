package com.central.yyg.model.vo;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.Min;
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
public class ActivityInfoVo {
    private static final long serialVersionUID=1L;
    @ApiModelProperty(value = "产品ID")
    private Long productorderId;
    @ApiModelProperty(value = "活动ID")
    private Long activityId;
    @ApiModelProperty(value = "活动商品单价")
    private Double activityAmount;
    @ApiModelProperty(value = "真实开奖人数不包括机器人数")
    private Integer startwinNumber;
    @ApiModelProperty(value = "活动开始时间")
    private Date startTime;
    @ApiModelProperty(value = "活动结束时间(为空时为无限活动)")
    private Date endTime;
    @ApiModelProperty(value = "结算状态 0未结算，1结算中，2结算完成")
    private Integer status;
    @ApiModelProperty(value = "活动明细ID")
    private Long id;
    @ApiModelProperty(value = "创建时间")
    private Date createTime;
    @ApiModelProperty(value = "修改时间")
    private Date updateTime;
    @ApiModelProperty(value = "创建人")
    private String createBy;
    @ApiModelProperty(value = "更新人")
    private String updateBy;

    @ApiModelProperty(value = "活动中文名称")
    private String activityNameCn;
    @ApiModelProperty(value = "活动英文名称")
    private String activityNameEn;
    @ApiModelProperty(value = "活动柬埔寨文名称")
    private String activityNameKh;
    @ApiModelProperty(value = "活动越南文名称")
    private String activityNameVn;
    @ApiModelProperty(value = "活动类型1：幸运大转盘，2：一元购")
    private Integer activityType;
    }
