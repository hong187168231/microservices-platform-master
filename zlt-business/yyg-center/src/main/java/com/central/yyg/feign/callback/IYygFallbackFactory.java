package com.central.yyg.feign.callback;

import com.central.common.model.Result;
import com.central.yyg.feign.IYygService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.web.bind.annotation.PathVariable;


@Slf4j
public class IYygFallbackFactory implements FallbackFactory<IYygService> {
    @Override
    public IYygService create(Throwable throwable) {
        /**
         * TODO 等待验证所有FallbackFactory是否完成
         */
        return new IYygService() {
            @Override
            public Result getRobotStatus(){
                log.error("服务器异常，查询机器人设置状态");
                return null;
            }
            @Override
            public Result getActivityInfoList(){
                log.error("服务器异常，查询活动明细");
                return null;
            }

        };
    }
}
