package com.central.yyg.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.common.model.PageResult;
import com.central.common.service.impl.SuperServiceImpl;
import com.central.yyg.mapper.CategoryMapper;
import com.central.yyg.service.CategoryService;
import com.central.yyg.model.entity.Category;
import org.apache.commons.collections4.MapUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("categoryService")
public class CategoryServiceImpl extends SuperServiceImpl<CategoryMapper,Category> implements CategoryService {

    @Override
    public PageResult<Category> findList(Map<String, Object> params) {
        Page<Category> page = new Page<>(MapUtils.getInteger(params, "page"), MapUtils.getInteger(params, "limit"));
        List<Category> list  =  baseMapper.findList(page, params);
        return PageResult.<Category>builder().data(list).count(page.getTotal()).build();
    }

    @Override
    public List<Category>getList(Map<String, Object> params) {
        return baseMapper.getList(params);
    }

}
