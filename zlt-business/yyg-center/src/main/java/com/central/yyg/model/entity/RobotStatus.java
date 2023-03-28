package com.central.yyg.model.entity;

import com.central.common.model.SuperEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.EqualsAndHashCode;
import java.util.Date;

/**
 * 是否开启机器人下单
 *
 * @author yixiu
 * @date 2023-02-25 21:19:03
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("robot_status")
public class RobotStatus extends SuperEntity {
    private static final long serialVersionUID=1L;
    @ApiModelProperty(value = "普通商品(0:开启 1:关闭)")
    private Integer ordinaryProductStatus;
    @ApiModelProperty(value = "活动商品(0:开启 1:关闭)")
    private Integer activityProductStatus;
    @ApiModelProperty(value = "机器人数量")
    private Integer robotNumber;
}
