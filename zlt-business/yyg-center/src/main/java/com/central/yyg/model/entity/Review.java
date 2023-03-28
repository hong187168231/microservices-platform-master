package com.central.yyg.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.central.common.model.SuperEntity;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 评论实体类
 * @author 小鬼项目小组
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = false)
@TableName("review")
public class Review extends SuperEntity {
//    private Integer review_id/*评论ID*/;
    private String review_content/*评论内容*/;
    private Date review_createDate/*评论时间*/;
    private Integer review_user_id/*评论对应用户*/;
    private Integer review_product_id/*评论对应产品*/;
    private Integer review_orderItem_id/*评论对应订单项*/;
}
