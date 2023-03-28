package com.central.yyg.mapper;

import com.central.db.mapper.SuperMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.central.yyg.model.entity.ActivityInfo;
import com.central.yyg.model.vo.ActivityInfoVo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 活动明细
 * 
 * @author yixiu
 * @date 2023-02-25 16:36:33
 */
@Mapper
public interface ActivityInfoMapper extends SuperMapper<ActivityInfo> {
    /**
     * 分页查询用户列表
     * @param page
     * @param params
     * @return
     */
    List<ActivityInfoVo> findList(Page<ActivityInfoVo> page, @Param("p") Map<String, Object> params);

    List<ActivityInfoVo> findList(@Param("p") Map<String, Object> params);
}
