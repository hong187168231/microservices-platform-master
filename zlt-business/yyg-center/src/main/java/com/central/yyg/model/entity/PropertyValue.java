package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
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
@TableName("propertyvalue")
public class PropertyValue extends SuperEntity {
//    private Integer propertyValue_id/*属性值ID*/;
    private String propertyValue_value/*属性值Value*/;
    private Long propertyvalue_property_id/*属性值对应属性*/;
    private Long propertyvalue_product_id/*属性值对应产品*/;

}
