package com.central.yyg.controller.admin;

import java.util.Map;

import com.central.yyg.model.entity.WinOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

import com.central.yyg.service.IWinOrderService;
import com.central.common.model.PageResult;
import com.central.common.model.Result;

/**
 * 中奖订单表
 *
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Slf4j
@RestController
@RequestMapping("/winorder")
@Api(tags = "中奖订单表")
public class WinOrderController {
    @Autowired
    private IWinOrderService winOrderService;

    /**
     * 列表
     */
    @ApiOperation(value = "查询列表")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "page", value = "分页起始位置", required = true, dataType = "Integer"),
            @ApiImplicitParam(name = "limit", value = "分页结束位置", required = true, dataType = "Integer")
    })
    @GetMapping
    public PageResult list(@RequestParam Map<String, Object> params) {
        return winOrderService.findList(params);
    }

    /**
     * 查询
     */
    @ApiOperation(value = "查询")
    @GetMapping("/{id}")
    public Result findUserById(@PathVariable Long id) {
        WinOrder model = winOrderService.getById(id);
        return Result.succeed(model, "查询成功");
    }

    /**
     * 新增or更新
     */
    @ApiOperation(value = "保存")
    @PostMapping
    public Result save(@RequestBody WinOrder winOrder) {
        winOrderService.saveOrUpdate(winOrder);
        return Result.succeed("保存成功");
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除")
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        winOrderService.removeById(id);
        return Result.succeed("删除成功");
    }
}
