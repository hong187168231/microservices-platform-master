package com.central.yyg.model.vo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.yyg.model.entity.Property;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * 类型实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
public class CategoryVo {
    @ApiModelProperty(value = "类型ID")
    private Integer category_id/*类型ID*/;
    @ApiModelProperty(value = "类型名称")
    private String category_name/*类型名称*/;
    @ApiModelProperty(value = "类型图片路径")
    private String category_image_src/*类型图片路径*/;
    @ApiModelProperty(value = "属性")
    private List<Property> propertyList;

}
