package com.central.yyg.model.vo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.yyg.model.entity.Category;
import com.central.yyg.model.entity.ProductImage;
import io.swagger.annotations.ApiModelProperty;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

/**
 * 产品实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
public class ProductVo {
    @ApiModelProperty(value = "产品ID")
    private Integer product_id/*产品ID*/;
    @ApiModelProperty(value = "产品名称")
    private String product_name/*产品名称*/;
    @ApiModelProperty(value = "产品标题")
    private String product_title/*产品标题*/;
    @ApiModelProperty(value = "产品原价格")
    private Double product_price/*产品原价格*/;
    @ApiModelProperty(value = "产品促销价格")
    private Double product_sale_price/*产品促销价格*/;
    @ApiModelProperty(value = "产品创建日期")
    private Date product_create_date/*产品创建日期*/;
    @ApiModelProperty(value = "产品对应类型")
    private Integer product_category_id/*产品对应类型*/;
    @ApiModelProperty(value = "产品状态")
    private Byte product_isEnabled/*产品状态*/;
    @ApiModelProperty(value = "销量数")
    private Integer product_sale_count/*销量数*/;
    @ApiModelProperty(value = "评价数")
    private Integer product_review_count/*评价数*/;
    @ApiModelProperty(value = "获取产品预览图片信息")
    List<ProductImage> singleProductImageList;
    @ApiModelProperty(value = "获取产品详情图片信息")
    List<ProductImage> detailsProductImageList;
    @ApiModelProperty(value = "属性")
    List<PropertyValueVo> propertyValueList;
    @ApiModelProperty(value = "分类列表")
    Category category;
}
