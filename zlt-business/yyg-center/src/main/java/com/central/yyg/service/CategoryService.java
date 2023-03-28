package com.central.yyg.service;


import com.central.common.model.PageResult;
import com.central.common.service.ISuperService;
import com.central.yyg.model.entity.Category;

import java.util.List;
import java.util.Map;

public interface CategoryService extends ISuperService<Category> {
    PageResult<Category> findList(Map<String, Object> params);
    public List<Category>getList(Map<String, Object> params);
}
