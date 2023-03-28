package com.central.yyg.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.central.common.model.PageResult;
import com.central.common.model.Result;
import com.central.yyg.model.entity.Category;
import com.central.yyg.model.entity.Property;
import com.central.yyg.model.vo.CategoryVo;
import com.central.yyg.service.CategoryService;
import com.central.yyg.service.PropertyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * 后台管理-产品类型页
 */
@Controller
@Api(tags = "后台管理-产品类型页")
@Slf4j
public class CategoryController{
    @Resource(name = "categoryService")
    private CategoryService categoryService;
    @Resource(name = "propertyService")
    private PropertyService propertyService;

    /**
     * 列表
     */
    @ApiOperation(value = "获取产品类型列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "category_name", value = "分类名称", required = true, dataType = "String"),
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @GetMapping(value = "admin/category")
    public Result<PageResult> list(@RequestParam Map<String, Object> params) {
        return Result.succeed(categoryService.findList(params));
    }


    //转到后台管理-产品类型详情页-ajax
    @ApiOperation("转到后台管理-产品类型详情页-ajax")
    @RequestMapping(value = "admin/category/{cid}", method = RequestMethod.GET)
    public Result goToDetailsPage(@PathVariable Integer cid/* 分类ID */) {
        log.info("获取category_id为{}的分类信息", cid);
        Category category = categoryService.getById(cid);
        log.info("获取分类子信息-属性列表");
        CategoryVo productVo = new CategoryVo();
        BeanUtils.copyProperties(category, productVo);
        Map<String, Object> params = new HashMap<>();
        params.put("property_category_id",cid);
        productVo.setPropertyList(propertyService.getList(params));
        log.info("转到后台管理-分类详情页-ajax方式");
        return Result.succeed(category, "查询成功");
    }

    //添加产品类型信息-ajax
    @ApiOperation("添加产品类型信息 或 更新产品类型信息")
    @PostMapping(value = "admin/category", produces = "application/json;charset=utf-8")
    public Result addCategory(@RequestBody Category category) {
        log.info("整合分类信息");
        categoryService.saveOrUpdate(category);
        return Result.succeed(category,"保存成功");
    }
    /**
     * 删除
     */
    @ApiOperation(value = "删除产品类型信息")
    @DeleteMapping("admin/category/{id}")
    public Result delete(@PathVariable Long id) {
        categoryService.removeById(id);
        return Result.succeed("删除成功");
    }

    // 上传产品类型图片-ajax
    @ApiOperation("上传产品类型图片-ajax")
    @ResponseBody
    @RequestMapping(value = "admin/uploadCategoryImage", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public String uploadCategoryImage(@RequestParam MultipartFile file, HttpSession session) {
        String originalFileName = file.getOriginalFilename();
        log.info("获取图片原始文件名:  {}", originalFileName);
        String extension = originalFileName.substring(originalFileName.lastIndexOf('.'));
        String fileName = UUID.randomUUID() + extension;
        String filePath = session.getServletContext().getRealPath("/") + "res/images/item/categoryPicture/" + fileName;

        log.info("文件上传路径：{}", filePath);
        JSONObject object = new JSONObject();
        try {
            log.info("文件上传中...");
            file.transferTo(new File(filePath));
            log.info("文件上传完成");
            object.put("success", true);
            object.put("fileName", fileName);
        } catch (IOException e) {
            log.warn("文件上传失败!");
            e.printStackTrace();
            object.put("success", false);
        }

        return object.toJSONString();
    }
}