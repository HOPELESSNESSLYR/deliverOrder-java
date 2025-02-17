package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Anonymous;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.service.ISysDeliverOrderService;
import com.ruoyi.system.service.impl.SysDeliverOrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * 送货单Controller
 * 
 * @author liyanru
 * @date 2024-09-18
 */
@RestController
@RequestMapping("/deliver/order")
public class SysDeliverOrderController extends BaseController
{
    @Autowired
    private ISysDeliverOrderService sysDeliverOrderService;
    @Autowired
    private SysDeliverOrderServiceImpl sysDeliverOrderServiceImpl;


    /**
     * 查询送货单列表
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysDeliverOrder sysDeliverOrder)
    {
        startPage();
        List<SysDeliverOrder> list = sysDeliverOrderService.selectSysDeliverOrderList(sysDeliverOrder);
        return getDataTable(list);
    }

    /**
     * 导出送货单列表
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:export')")
    @Log(title = "送货单", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysDeliverOrder sysDeliverOrder)
    {
        List<SysDeliverOrder> list = sysDeliverOrderService.selectSysDeliverOrderList(sysDeliverOrder);
        ExcelUtil<SysDeliverOrder> util = new ExcelUtil<SysDeliverOrder>(SysDeliverOrder.class);
        util.exportExcel(response, list, "送货单数据");
    }

    /**
     * 获取送货单详细信息
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(sysDeliverOrderService.selectSysDeliverOrderById(id));
    }

    /**
     * 新增送货单
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:add')")
    @Log(title = "送货单", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysDeliverOrder sysDeliverOrder)
    {
        return toAjax(sysDeliverOrderService.insertSysDeliverOrder(sysDeliverOrder));
    }

    @PostMapping("/addd")
    public AjaxResult addd(@RequestBody SysDeliverOrder sysDeliverOrder)
    {
        return toAjax(sysDeliverOrderService.insertSysDeliverOrder(sysDeliverOrder));
    }

    /**
     * 修改送货单
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:edit')")
    @Log(title = "送货单", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysDeliverOrder sysDeliverOrder)
    {
        return toAjax(sysDeliverOrderService.updateSysDeliverOrder(sysDeliverOrder));
    }
    /**
     * 更新送货单状态
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:put')")
    @PutMapping("/put/{ids}")
    public AjaxResult put(@PathVariable Long[] ids)
    {
        return toAjax(sysDeliverOrderService.updatePutStatus(ids));
    }
    /**
     * 批量更新送货单状态
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:status')")
    @PutMapping("/status/{ids}")
    public AjaxResult status(@PathVariable Long[] ids)
    {
        return toAjax(sysDeliverOrderService.updateStatus(ids));
    }

    /**
     * 删除送货单
     */
    @PreAuthorize("@ss.hasPermi('deliver:order:remove')")
    @Log(title = "送货单", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(sysDeliverOrderService.deleteSysDeliverOrderByIds(ids));
    }

    /**
     * 导入送货单
     */
    @Log(title = "送货单", businessType = BusinessType.IMPORT)
    @PreAuthorize("@ss.hasPermi('deliver:order:import')")
    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        ExcelUtil<SysDeliverOrder> util = new ExcelUtil<SysDeliverOrder>(SysDeliverOrder.class);
        List<SysDeliverOrder> SysDeliverOrderList = util.importExcel(file.getInputStream());
        String operName = getUsername();
        String message = sysDeliverOrderService.importSysDeliverOrder(SysDeliverOrderList, updateSupport, operName);
        return AjaxResult.success(message);
    }


    /**
     * 获取送货单号
     */
    @Log(title = "送货单号")
    @GetMapping("/generate")
    public String generate(String getOrder)
    {
        return sysDeliverOrderService.generateOrder(getOrder);
    }


    /**
     * 采购列表
     */
    @PostMapping("/getPurchaseOne")
    public String getPurchase (@RequestBody Purchase purchase)
    {
        String supplier=purchase.getSupplier();
        Integer page=purchase.getPage();
        return sysDeliverOrderService.changePurchaseData(supplier,page);
    }
    @PostMapping("/purchaseSearch")
    public String getPurchase (@RequestBody Search search)
    {
        String EBELN= search.getEBELN();
        String MATNR=search.getMATNR();
        String supplier=search.getSupplier();
        Integer page=search.getPage();
        return sysDeliverOrderService.changePurchase(EBELN,MATNR,supplier,page);
    }
    @PostMapping("/salecate")
    public String purchaseSale (@RequestBody salePerson purchase)
    {
        String salecate=purchase.getSalecate();
        Integer page=purchase.getPage();
        return sysDeliverOrderService.changePurchaseSale(salecate,page);
    }

    @PostMapping("/salecateSearch")
    public String purchaseSaleSearch (@RequestBody salePersonSearch purchaseSearch)
    {
        String EBELN= purchaseSearch.getEBELN();
        String MATNR=purchaseSearch.getMATNR();
//        String LIFNR=purchaseSearch.getLIFNR();
        String salecate=purchaseSearch.getSalecate();
        Integer page=purchaseSearch.getPage();
        return sysDeliverOrderService.changePurchaseSaleSearch( EBELN, MATNR, salecate, page);
    }

    /* 送货列表 获取批次 */
    @PostMapping("/getcharg")
    public String getCharg(@RequestBody TypeTemplate param)
    {
        String purchaseOrder=param.getPurchaseOrder();
        String thingOrder=param.getThingOrder();
        String supplier=param.getSupplier();
        String flag=param.getFlag();
        String orDate=param.getOrDate();
        String deDate=param.getDeDate();
        return sysDeliverOrderService.getchargData(purchaseOrder,thingOrder,supplier,flag,orDate,deDate);
    }
//    @PostMapping("/savePrintData")
//    public String savePrintData(@RequestBody TypeTemplateAddReq params)
//    {
//        String purchaseOrder=params.getPurchaseOrder();
//        String thingOrder=params.getThingOrder();
//        String supplier=params.getSupplier();
//        String flag=params.getFlag();
//        return sysDeliverOrderService.getchargCode(purchaseOrder,thingOrder,supplier,flag);
//    }
    /** 冲销 */
    @ResponseBody
    @PostMapping("/pushsale")
    @Anonymous
    public Push getPushSale (@RequestBody PushSale pushSale)
    {
        return sysDeliverOrderService.pushSale(pushSale);
    }

    /** 冲销 */
    @ResponseBody
    @PostMapping("/delete")
    @Anonymous
    public Push delete(@RequestBody Delete delete)
    {
        return sysDeliverOrderService.delete(delete);
    }
    @ResponseBody
    @PostMapping("/remain")
    @Anonymous
    public String remain (@RequestBody Select select)
    {
        return sysDeliverOrderService.Remain(select);
    }


    /**工单列表*/
    @PostMapping("/getOutSourcing")
    public String getOutSourcing(@RequestBody int page)
    {
        return sysDeliverOrderService.changeGetOutSourcingData(page);
    }
}
