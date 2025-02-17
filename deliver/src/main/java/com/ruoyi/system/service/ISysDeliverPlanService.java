package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysDeliverPlan;

/**
 * 送货计划信息Service接口
 * 
 * @author liyanru
 * @date 2024-12-05
 */
public interface ISysDeliverPlanService 
{
    /**
     * 查询送货计划信息
     * 
     * @param id 送货计划信息主键
     * @return 送货计划信息
     */
    public SysDeliverPlan selectSysDeliverPlanById(Long id);

    /**
     * 查询送货计划信息列表
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 送货计划信息集合
     */
    public List<SysDeliverPlan> selectSysDeliverPlanList(SysDeliverPlan sysDeliverPlan);

    /**
     * 新增送货计划信息
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 结果
     */
    public int insertSysDeliverPlan(SysDeliverPlan sysDeliverPlan);

    /**
     * 修改送货计划信息
     * 
     * @param sysDeliverPlan 送货计划信息
     * @return 结果
     */
    public int updateSysDeliverPlan(SysDeliverPlan sysDeliverPlan);

    /**
     * 批量删除送货计划信息
     * 
     * @param ids 需要删除的送货计划信息主键集合
     * @return 结果
     */
    public int deleteSysDeliverPlanByIds(Long[] ids);

    /**
     * 删除送货计划信息信息
     * 
     * @param id 送货计划信息主键
     * @return 结果
     */
    public int deleteSysDeliverPlanById(Long id);
}
