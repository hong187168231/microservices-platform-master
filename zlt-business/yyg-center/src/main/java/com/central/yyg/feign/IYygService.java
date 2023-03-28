package com.central.yyg.feign;

import com.central.common.constant.ServiceNameConstants;
import com.central.common.model.Result;
import com.central.yyg.feign.callback.IYygFallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


/**
 * @author zlt
 */
@FeignClient(name = ServiceNameConstants.YYG_SERVICE, fallbackFactory = IYygFallbackFactory.class, decode404 = true)
public interface IYygService {
    /**
     * 查询机器人设置状态
     *
     * @return
     */
    @GetMapping(value = "/admin/robotstatus/list")
    Result getRobotStatus();


    @GetMapping(value = "/admin/activityinfo/list")
    Result getActivityInfoList();

}
