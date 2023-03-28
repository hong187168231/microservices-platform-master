package com.central.pay.controller;

import com.central.common.model.PageResult;
import com.central.common.model.Result;
import com.central.pay.model.entity.PayUser;
import com.central.pay.service.IPayUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 平台支付账号
 *
 * @author yixiu
 * @date 2023-02-09 14:04:14
 */
@Slf4j
@RestController
@RequestMapping("/payuser")
@Api(tags = "平台支付账号")
public class PayUserController {
    @Autowired
    private IPayUserService payUserService;

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
        return payUserService.findList(params);
    }

    /**
     * 查询
     */
    @ApiOperation(value = "查询")
    @GetMapping("/{id}")
    public Result findUserById(@PathVariable Long id) {
        PayUser model = payUserService.getById(id);
        return Result.succeed(model, "查询成功");
    }

    /**
     * 新增or更新
     */
    @ApiOperation(value = "保存")
    @PostMapping
    public Result save(@RequestBody PayUser payUser) {
        payUserService.saveOrUpdate(payUser);
        return Result.succeed("保存成功");
    }

    /**
     * 删除
     */
    @ApiOperation(value = "删除")
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        payUserService.removeById(id);
        return Result.succeed("删除成功");
    }
}
