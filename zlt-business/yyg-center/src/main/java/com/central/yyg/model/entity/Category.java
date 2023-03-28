package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
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
@TableName("category")
public class Category extends SuperEntity {
//    private Integer category_id/*类型ID*/;

    private String category_name_cn/*类型中文名称*/;
    private String category_name_en/*类型英文名称*/;
    private String category_name_kh/*类型柬埔寨名称*/;
    private String category_name_vn/*类型越南名称*/;
    private String category_image_src/*类型图片路径*/;

}
