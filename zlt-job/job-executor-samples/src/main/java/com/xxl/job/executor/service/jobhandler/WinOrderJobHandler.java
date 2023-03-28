package com.xxl.job.executor.service.jobhandler;

import com.central.common.model.Result;
import com.central.yyg.feign.IYygService;
import com.central.yyg.model.vo.ActivityInfoVo;
import com.xxl.job.core.biz.model.ReturnT;
import com.xxl.job.core.handler.IJobHandler;
import com.xxl.job.core.handler.annotation.JobHandler;
import com.xxl.job.core.log.XxlJobLogger;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 任务Handler示例（Bean模式）
 * <p>
 * 开发步骤：
 * 1、继承"IJobHandler"：“com.xxl.job.core.handler.IJobHandler”；
 * 2、注册到Spring容器：添加“@Component”注解，被Spring容器扫描为Bean实例；
 * 3、注册到执行器工厂：添加“@JobHandler(value="自定义jobhandler名称")”注解，注解value值对应的是调度中心新建任务的JobHandler属性的值。
 * 4、执行日志：需要通过 "XxlJobLogger.log" 打印执行日志；
 *
 * @author xuxueli 2015-12-19 19:43:36
 */
@JobHandler(value = "winOrderJobHandler")
@Component
public class WinOrderJobHandler extends IJobHandler {
    @Resource
    private IYygService yygService;
    @Override
    public ReturnT<String> execute(String param) throws Exception {
        XxlJobLogger.log("XXL-JOB, 生成中奖订单");
        Map<String, Object> params = new HashMap<>();
        params.put("activityType","2");//1：幸运大转盘，2：一元购
        params.put("actEndEndTime","2");
        params.put("status","0");//未结算，1结算中，2结算完成
        Result result = yygService.getActivityInfoList();
        List<ActivityInfoVo> robotStatusList = (List<ActivityInfoVo>) result.getDatas();
        for(ActivityInfoVo activityInfoVo : robotStatusList){


        }
//        for (int i = 0; i < 5; i++) {
//            XxlJobLogger.log("beat at:" + i);
//            TimeUnit.SECONDS.sleep(2);
//        }
        return SUCCESS;
    }
}
