package com.central.yyg.model.vo;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

/**
 * 属性值实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
public class PropertyValueVo {
    @ApiModelProperty(value = "属性ID")
    private Integer property_id/*属性ID*/;
    @ApiModelProperty(value = "属性名称")
    private String property_name/*属性名称*/;
    @ApiModelProperty(value = "属性对应分类")
    private Integer property_category_id/*属性对应分类*/;
    @ApiModelProperty(value = "属性值ID")
    private Integer propertyValue_id/*属性值ID*/;
    @ApiModelProperty(value = "属性值Value")
    private String propertyValue_value/*属性值Value*/;
    @ApiModelProperty(value = "属性值对应属性")
    private Integer propertyvalue_property_id/*属性值对应属性*/;
    @ApiModelProperty(value = "属性值对应产品")
    private Integer propertyvalue_product_id/*属性值对应产品*/;

}
