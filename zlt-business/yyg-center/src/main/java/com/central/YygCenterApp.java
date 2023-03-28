package com.central;

import com.central.common.lb.annotation.EnableFeignInterceptor;
import com.central.search.annotation.EnableSearchClient;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.data.redis.RedisAutoConfiguration;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author 作者 owen E-mail: 624191343@qq.com
 */
@EnableDiscoveryClient
@EnableSearchClient
@EnableTransactionManagement
@EnableFeignInterceptor
@SpringBootApplication(exclude = {RedisAutoConfiguration.class})
public class YygCenterApp {
    public static void main(String[] args) {
        SpringApplication.run(YygCenterApp.class, args);
    }
}
