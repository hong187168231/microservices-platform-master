package com.central.yyg.controller.admin;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.central.common.model.PageResult;
import com.central.common.model.Result;
import com.central.yyg.model.entity.*;
import com.central.yyg.model.vo.ProductVo;
import com.central.yyg.model.vo.PropertyValueVo;
import com.central.yyg.service.*;
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
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.*;

/**
 * 后台管理-产品页
 */
@Controller
@Slf4j
@Api("后台管理-产品页")
public class ProductController {
    @Resource(name = "productService")
    private ProductService productService;
    @Resource(name = "productImageService")
    private ProductImageService productImageService;
    @Resource(name = "propertyService")
    private PropertyService propertyService;
    @Resource(name = "categoryService")
    private CategoryService categoryService;
    @Resource(name = "propertyValueService")
    private PropertyValueService propertyValueService;

    //转到后台管理-产品页-ajax
    @ApiOperation("分页查询商品列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "isDesc", value = "是否倒序", required = false, dataType = "Boolean"),
            @ApiImplicitParam(name = "orderBy", value = "排序字段", required = false, dataType = "String"),
            @ApiImplicitParam(name = "product_isEnabled_array", value = "产品状态数组", required = false, dataType = "Byte[]"),
            @ApiImplicitParam(name = "category_id", value = "产品类型ID", required = false, dataType = "Integer"),
            @ApiImplicitParam(name = "product_sale_price", value = "产品促销价", required = false, dataType = "Double"),
            @ApiImplicitParam(name = "product_price", value = "产品原价", required = false, dataType = "Double"),
            @ApiImplicitParam(name = "product_name", value = "产品名称", required = false, dataType = "String"),
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @RequestMapping(value = "admin/product",method = RequestMethod.GET)
    public Result<PageResult> goToPage(@RequestParam Map<String, Object> params) {
        return Result.succeed(productService.findList(params));
    }

    //转到后台管理-产品详情页-ajax
    @ApiOperation("转到后台管理-产品详情页-ajax")
    @RequestMapping(value="admin/product/{pid}",method = RequestMethod.GET)
    public Result goToDetailsPage( @PathVariable Integer pid/* 产品ID */) {
        log.info("获取product_id为{}的产品信息",pid);
        Product product = productService.getById(pid);
        Long product_id = product.getId();
        ProductVo productVo = new ProductVo();
        BeanUtils.copyProperties(product, productVo);
        log.info("获取产品预览图片信息");
        Map<String, Object> params = new HashMap<>();
        params.put("productimage_product_id",product_id);
        params.put("productImage_type",(byte) 0);
        List<ProductImage> singleProductImageList = productImageService.getList(params);
        productVo.setSingleProductImageList(singleProductImageList);
        log.info("获取产品详情图片信息");
        Map<String, Object> params1 = new HashMap<>();
        params1.put("productimage_product_id",product_id);
        params1.put("productImage_type",(byte) 1);
        List<ProductImage> detailsProductImageList = productImageService.getList(params1);
        productVo.setDetailsProductImageList(detailsProductImageList);
        log.info("获取产品详情-属性值信息");
        Map<String, Object> params2 = new HashMap<>();
        params2.put("propertyvalue_product_id",pid);
        params2.put("property_category_id",product.getCategoryId());
        List<PropertyValueVo> propertyValueList = propertyValueService.getList(params2);
        productVo.setPropertyValueList(propertyValueList);
        log.info("获取产品详情-分类信息对应的属性列表");
        log.info("获取分类列表");
        Map<String, Object> params3 = new HashMap<>();
        Category category = categoryService.getById(product.getCategoryId());
        productVo.setCategory(category);
        return Result.succeed(productVo, "查询成功");
    }

    //添加产品信息-ajax.
    @ApiOperation("添加产品信息 或 修改产品信息")
    @ResponseBody
    @RequestMapping(value = "admin/product", method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public Result addProduct(@RequestBody Product product,
                             @RequestParam List<PropertyValue> propertyValueList/* 产品属性JSON */,
                             @RequestParam(required = false) List<ProductImage> productImageList/*产品预览图片*/,
                             @RequestParam(required = false) List<ProductImage> productDetailsImageList/*产品详情图片*/) {
        log.info("整合产品信息");
        log.info("添加产品信息");
        try {
            productService.saveOrUpdateProduct(product,propertyValueList,productImageList,productDetailsImageList);
            log.info("产品信息及其子信息添加成功！");
            return Result.succeed("产品信息及其子信息添加成功！");
        }catch (Exception e){
            e.printStackTrace();
            log.warn("产品添加失败！事务回滚");
            return Result.failed("产品添加失败！事务回滚");
        }
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除属性值")
    @DeleteMapping("admin/propertyValue/{id}")
    public Result delete(@PathVariable Long id) {
        propertyValueService.removeById(id);
        return Result.succeed("删除成功");
    }

    //按ID删除产品图片并返回最新结果-ajax
    @ApiOperation("按ID删除产品图片并返回最新结果-ajax")
    @ResponseBody
    @RequestMapping(value = "admin/productImage/{productImage_id}",method = RequestMethod.DELETE,produces = "application/json;charset=utf-8")
    public String deleteProductImageById(@PathVariable List<ProductImage> productImageList/* 产品图片ID */){
        JSONObject object = new JSONObject();
        log.info("获取productImage_id为{}的产品图片信息",productImageList);

        log.info("删除产品图片");
        Boolean yn = productImageService.removeBatchByIds(productImageList);
        if (yn) {
            log.info("删除图片成功！");
            object.put("success", true);
        } else {
            log.warn("删除图片失败！事务回滚");
            object.put("success", false);
            throw new RuntimeException();
        }
        return object.toJSONString();
    }

    //上传产品图片-ajax
    @ApiOperation("上传产品图片-ajax")
    @ResponseBody
    @RequestMapping(value = "admin/uploadProductImage", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public String uploadProductImage(@RequestParam MultipartFile file, @RequestParam String imageType, HttpSession session) {
        String originalFileName = file.getOriginalFilename();
        log.info("获取图片原始文件名：{}", originalFileName);
        String extension = originalFileName.substring(originalFileName.lastIndexOf('.'));
        String filePath;
        String fileName = UUID.randomUUID() + extension;
        if ("single".equals(imageType)) {
            filePath = session.getServletContext().getRealPath("/") + "res/images/item/productSinglePicture/" + fileName;
        } else {
            filePath = session.getServletContext().getRealPath("/") + "res/images/item/productDetailsPicture/" + fileName;
        }

        log.info("文件上传路径：{}", filePath);
        JSONObject object = new JSONObject();
        try {
            log.info("文件上传中...");
            file.transferTo(new File(filePath));
            log.info("文件上传完成");
            object.put("success", true);
            object.put("fileName", fileName);
        } catch (IOException e) {
            log.warn("文件上传失败！");
            e.printStackTrace();
            object.put("success", false);
        }

        return object.toJSONString();
    }
}