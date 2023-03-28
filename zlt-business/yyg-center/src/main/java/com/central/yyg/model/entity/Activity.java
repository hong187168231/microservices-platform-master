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
 * 活动类型
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("activity")
public class Activity extends SuperEntity {
    private static final long serialVersionUID=1L;
    @NotEmpty(message = "活动中文名称不能为空！")
    @ApiModelProperty(value = "活动中文名称")
    private String activityNameCn;
    @NotEmpty(message = "活动英文名称不能为空！")
    @ApiModelProperty(value = "活动英文名称")
    private String activityNameEn;
    @NotEmpty(message = "活动柬埔寨文名称不能为空！")
    @ApiModelProperty(value = "活动柬埔寨文名称")
    private String activityNameKh;
    @NotEmpty(message = "活动越南文名称不能为空！")
    @ApiModelProperty(value = "活动越南文名称")
    private String activityNameVn;
    @NotBlank(message = "活动类型不能为空！")
    @ApiModelProperty(value = "活动类型1：幸运大转盘，2：一元购")
    private Integer activityType;
    }
