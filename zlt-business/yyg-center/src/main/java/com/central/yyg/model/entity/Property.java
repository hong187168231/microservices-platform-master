package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * 属性实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("property")
public class Property  extends SuperEntity {
//    private Integer property_id/*属性ID*/;
    private String property_name/*属性名称*/;
    private Integer property_category_id/*属性对应分类*/;
}
