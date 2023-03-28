package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * 产品实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("product")
public class Product  extends SuperEntity {
//    private Integer product_id/*产品ID*/;
    private String productName/*产品名称*/;
    private String productTitle/*产品标题*/;
    private Double productPrice/*产品原价格*/;
    private Double productSalePrice/*产品促销价格*/;
    private Integer categoryId/*产品对应类型*/;
    private Byte isEnabled/*产品状态*/;
    private Integer saleCount/*销量数*/;
    private Integer reviewCount/*评价数*/;
}
