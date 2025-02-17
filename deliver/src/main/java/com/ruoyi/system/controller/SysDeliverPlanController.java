package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.domain.SysDeliverOrder;
import com.ruoyi.system.service.ISysDeliverOrderService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysDeliverPlan;
import com.ruoyi.system.service.ISysDeliverPlanService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 送货计划信息Controller
 * 
 * @author liyanru
 * @date 2024-12-05
 */
@RestController
@RequestMapping("/plan/plan")
public class SysDeliverPlanController extends BaseController
{
    @Autowired
    private ISysDeliverPlanService sysDeliverPlanService;

    @Autowired
    private ISysDeliverOrderService sysDeliverOrderService;
    /**
     * 查询送货计划信息列表
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDeliverPlan sysDeliverPlan)
    {
        startPage();
//        List<SysDeliverPlan> list = sysDeliverPlanService.selectSysDeliverPlanList(sysDeliverPlan);
        SysDeliverOrder sysDeliverOrder = new SysDeliverOrder();
        sysDeliverOrder.setAsnNo(sysDeliverPlan.getAsnNo());
        sysDeliverOrder.setLineNumber(sysDeliverPlan.getLineNumber());
        sysDeliverOrder.setSupplieId(sysDeliverPlan.getSupplieId());
        sysDeliverOrder.setPoNo(sysDeliverPlan.getPoNo());
        sysDeliverOrder.setPoLineNo(sysDeliverPlan.getPoLineNo());
        sysDeliverOrder.setSku(sysDeliverPlan.getSku());
        sysDeliverOrder.setSkuDescr(sysDeliverPlan.getSkuDescr());
        sysDeliverOrder.setLotatt15(sysDeliverPlan.getBusinessScope());
        sysDeliverOrder.setProjectCategory(sysDeliverPlan.getCategory());
        sysDeliverOrder.setOrderDate(sysDeliverPlan.getOrderDate());
        sysDeliverOrder.setDeliveryDate(sysDeliverPlan.getDeliveryDate());
        sysDeliverOrder.setExpectedQty(sysDeliverPlan.getDeliverQuatity());
        List<SysDeliverOrder> list = sysDeliverOrderService.selectSysDeliverOrderList(sysDeliverOrder);
        return getDataTable(list);
    }

    /**
     * 导出送货计划信息列表
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:export')")
    @Log(title = "送货计划信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDeliverPlan sysDeliverPlan)
    {
        List<SysDeliverPlan> list = sysDeliverPlanService.selectSysDeliverPlanList(sysDeliverPlan);
        ExcelUtil<SysDeliverPlan> util = new ExcelUtil<SysDeliverPlan>(SysDeliverPlan.class);
        util.exportExcel(response, list, "送货计划信息数据");
    }

    /**
     * 获取送货计划信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(sysDeliverPlanService.selectSysDeliverPlanById(id));
    }

    /**
     * 新增送货计划信息
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:add')")
    @Log(title = "送货计划信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysDeliverPlan sysDeliverPlan)
    {
        return toAjax(sysDeliverPlanService.insertSysDeliverPlan(sysDeliverPlan));
    }

    /**
     * 修改送货计划信息
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:edit')")
    @Log(title = "送货计划信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDeliverPlan sysDeliverPlan)
    {
        return toAjax(sysDeliverPlanService.updateSysDeliverPlan(sysDeliverPlan));
    }

    /**
     * 删除送货计划信息
     */
    @PreAuthorize("@ss.hasPermi('plan:plan:remove')")
    @Log(title = "送货计划信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysDeliverPlanService.deleteSysDeliverPlanByIds(ids));
    }
}
