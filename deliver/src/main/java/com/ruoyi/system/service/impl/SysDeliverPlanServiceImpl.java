package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysDeliverPlanMapper;
import com.ruoyi.system.domain.SysDeliverPlan;
import com.ruoyi.system.service.ISysDeliverPlanService;

/**
 * 送货计划信息Service业务层处理
 * 
 * @author liyanru
 * @date 2024-12-05
 */
@Service
public class SysDeliverPlanServiceImpl implements ISysDeliverPlanService 
{
    @Autowired
    private SysDeliverPlanMapper sysDeliverPlanMapper;

    /**
     * 查询送货计划信息
     * 
     * @param id 送货计划信息主键
     * @return 送货计划信息
     */
    @Override
    public SysDeliverPlan selectSysDeliverPlanById(Long id)
    {
        return sysDeliverPlanMapper.selectSysDeliverPlanById(id);
    }

    /**
     * 查询送货计划信息列表
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 送货计划信息
     */
    @Override
    public List<SysDeliverPlan> selectSysDeliverPlanList(SysDeliverPlan sysDeliverPlan)
    {
        return sysDeliverPlanMapper.selectSysDeliverPlanList(sysDeliverPlan);
    }

    /**
     * 新增送货计划信息
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 结果
     */
    @Override
    public int insertSysDeliverPlan(SysDeliverPlan sysDeliverPlan)
    {
        return sysDeliverPlanMapper.insertSysDeliverPlan(sysDeliverPlan);
    }

    /**
     * 修改送货计划信息
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 结果
     */
    @Override
    public int updateSysDeliverPlan(SysDeliverPlan sysDeliverPlan)
    {
        return sysDeliverPlanMapper.updateSysDeliverPlan(sysDeliverPlan);
    }

    /**
     * 批量删除送货计划信息
     * 
     * @param ids 需要删除的送货计划信息主键
     * @return 结果
     */
    @Override
    public int deleteSysDeliverPlanByIds(Long[] ids)
    {
        return sysDeliverPlanMapper.deleteSysDeliverPlanByIds(ids);
    }

    /**
     * 删除送货计划信息信息
     * 
     * @param id 送货计划信息主键
     * @return 结果
     */
    @Override
    public int deleteSysDeliverPlanById(Long id)
    {
        return sysDeliverPlanMapper.deleteSysDeliverPlanById(id);
    }
}
