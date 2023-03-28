package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

/**
 * 产品图片实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("productimage")
public class ProductImage  extends SuperEntity {
//    private Integer productImage_id/*产品图片ID*/;
    private Byte productImage_type/*产品图片类型*/;
    private String productImage_src/*产品图片路径*/;
    private Long productimage_product_id/*产品图片对应产品*/;
}
