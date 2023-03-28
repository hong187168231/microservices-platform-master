package com.central.yyg.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.model.PageResult;
import com.central.common.service.impl.SuperServiceImpl;
import com.central.yyg.mapper.ReviewMapper;
import com.central.yyg.model.entity.Review;
import com.central.yyg.service.IReviewService;
import org.apache.commons.collections4.MapUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("reviewService")
public class ReviewServiceImpl extends SuperServiceImpl<ReviewMapper,Review> implements IReviewService {
    @Override
    public PageResult<Review> findList(Map<String, Object> params){
        Page<Review> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Review> list  =  baseMapper.findList(page, params);
        return PageResult.<Review>builder().data(list).count(page.getTotal()).build();
    }
}
