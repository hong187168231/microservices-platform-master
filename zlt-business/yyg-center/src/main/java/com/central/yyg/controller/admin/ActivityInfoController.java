package com.central.yyg.controller.admin;

import java.util.Map;

import com.central.yyg.model.entity.ActivityInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.service.IActivityInfoService;
import com.central.common.model.PageResult;
import com.central.common.model.Result;

/**
 * 活动明细
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Slf4j
@RestController
@RequestMapping("/admin/activityinfo")
@Api(tags = "活动明细")
public class ActivityInfoController {
    @Autowired
    private IActivityInfoService activityInfoService;

    /**
     * 列表
     */
    @ApiOperation(value = "分页查询活动明细列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @GetMapping("/page")
    public PageResult listPage(@RequestParam Map<String, Object> params) {
        return activityInfoService.findListByPage(params);
    }
    @ApiOperation(value = "查询活动明细列表")
    @GetMapping("/list")
    public Result list(@RequestParam Map<String, Object> params) {
        return Result.succeed(activityInfoService.findList(params));
    }

    /**
     * 查询
     */
    @ApiOperation(value = "查询")
    @GetMapping("/{id}")
    public Result findUserById(@PathVariable Long id) {
        ActivityInfo model = activityInfoService.getById(id);
        return Result.succeed(model, "查询成功");
    }

    /**
     * 新增or更新
     */
    @ApiOperation(value = "保存")
    @PostMapping
    public Result save(@RequestBody ActivityInfo activityInfo) {
        activityInfoService.saveOrUpdate(activityInfo);
        return Result.succeed("保存成功");
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除")
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        activityInfoService.removeById(id);
        return Result.succeed("删除成功");
    }
}
