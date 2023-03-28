package com.central.yyg.controller.admin;

import com.central.common.annotation.LoginUser;
import com.central.common.model.PageResult;
import com.central.common.model.Result;
import com.central.common.model.SysUser;
import com.central.yyg.service.PropertyService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.central.yyg.model.entity.Property;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * 演员列表
 *
 * @author yixiu
 * @date 2023-02-03 16:31:09
 */
@Slf4j
@RestController
@RequestMapping("admin/property")
@Api(tags = "演员列表")
public class PropertyController {
    @Resource(name = "propertyService")
    private PropertyService propertyService;

    /**
     * 列表
     */
    @ApiOperation(value = "查询列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @GetMapping
    public Result<PageResult> list(@RequestParam Map<String, Object> params) {
        return Result.succeed(propertyService.findList(params));
    }

    /**
     * 按类型ID查询属性
     * @param property_category_id
     * @return
     */
    @ApiOperation(value = "按类型ID查询属性")
    @GetMapping("/type/{property_category_id}")
    public Result list(@PathVariable Integer property_category_id) {
        Map<String, Object> params = new HashMap<>();
        params.put("property_category_id",property_category_id);
        return Result.succeed(propertyService.getList(params));
    }

    /**
     * 查询
     */
    @ApiOperation(value = "查询演员详情")
    @GetMapping("/{id}")
    public Result findUserById(@PathVariable Long id) {
        Property model = propertyService.getById(id);
        return Result.succeed(model, "查询成功");
    }

    /**
     * 新增or更新
     */
    @ApiOperation(value = "添加演员或修改演员")
    @PostMapping
    public Result save(@RequestBody Property property) {
        propertyService.saveOrUpdate(property);
        return Result.succeed("保存成功");
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除")
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        propertyService.removeById(id);
        return Result.succeed("删除成功");
    }
}
