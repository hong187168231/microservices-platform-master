package com.central.yyg.controller.admin;

import java.util.Map;

import com.central.yyg.model.entity.RobotStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.service.IRobotStatusService;
import com.central.common.model.PageResult;
import com.central.common.model.Result;

/**
 * 是否开启机器人下单
 *
 * @author yixiu
 * @date 2023-02-25 21:19:03
 */
@Slf4j
@RestController
@RequestMapping("/admin/robotstatus")
@Api(tags = "机器人状态")
public class RobotStatusController {
    @Autowired
    private IRobotStatusService robotStatusService;

    /**
     * 列表
     */
    @ApiOperation(value = "分页查询机器人状态列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @GetMapping("/page")
    public PageResult listPage(@RequestParam Map<String, Object> params) {
        return robotStatusService.findListByPage(params);
    }
    /**
     * 列表
     */
    @ApiOperation(value = "查询机器人状态列表")
    @GetMapping("/list")
    public Result list(@RequestParam Map<String, Object> params) {
        return Result.succeed(robotStatusService.findList(params));
    }

    /**
     * 查询
     */
    @ApiOperation(value = "查询")
    @GetMapping("/{id}")
    public Result findUserById(@PathVariable Long id) {
        RobotStatus model = robotStatusService.getById(id);
        return Result.succeed(model, "查询成功");
    }

    /**
     * 新增or更新
     */
    @ApiOperation(value = "保存")
    @PostMapping
    public Result save(@RequestBody RobotStatus robotStatus) {
        robotStatusService.saveOrUpdate(robotStatus);
        return Result.succeed("保存成功");
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除")
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        robotStatusService.removeById(id);
        return Result.succeed("删除成功");
    }
}
