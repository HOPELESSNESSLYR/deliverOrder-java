package com.ruoyi.system.service;

import java.util.List;

import com.ruoyi.system.domain.*;

/**
 * 送货单Service接口
 * 
 * @author liyanru
 * @date 2024-09-18
 */
public interface ISysDeliverOrderService 
{
    /**
     * 查询送货单
     * 
     * @param id 送货单主键
     * @return 送货单
     */
    public SysDeliverOrder selectSysDeliverOrderById(Long id);

    /**
     * 查询送货单列表
     * 
     * @param sysDeliverOrder 送货单
     * @return 送货单集合
     */
    public List<SysDeliverOrder> selectSysDeliverOrderList(SysDeliverOrder sysDeliverOrder);

    /**
     * 新增送货单
     * 
     * @param sysDeliverOrder 送货单
     * @return 结果
     */
    public int insertSysDeliverOrder(SysDeliverOrder sysDeliverOrder);

    /**
     * 修改送货单
     * 
     * @param sysDeliverOrder 送货单
     * @return 结果
     */
    public int updateSysDeliverOrder(SysDeliverOrder sysDeliverOrder);

    /**
     * 批量删除送货单
     * 
     * @param ids 需要删除的送货单主键集合
     * @return 结果
     */
    public int deleteSysDeliverOrderByIds(Long[] ids);

    /**
     * 删除送货单信息
     * 
     * @param id 送货单主键
     * @return 结果
     */
    public int deleteSysDeliverOrderById(Long id);

    String importSysDeliverOrder(List<SysDeliverOrder> dormArticleList, Boolean isUpdateSupport, String operName);

    public String generateOrder(String sysDeliverOrder);

    /**
     * 批量修改状态
     *
     * @param ids 主键集合
     */
    public int updateStatus( Long[] ids);
    public int updateStatusById( Long[] id);
    public int updatePutStatus( Long[] ids);
    public int updatePutStatusById( Long[] id);




    String getchargData(String purchaseOrder, String thingOrder, String supplier, String flag, String orDate, String deDate);

    String getchargCode(String purchaseOrder, String thingOrder, String supplier, String flag);

    public String changeGetOutSourcingData(int page);

//    public String changePurchaseData(String supply, String materialNo, String purchaseNo, Date productDay, Date createDay, int page);
    public String changePurchaseData(String supplier,int page);
    public String changePurchase(String EBELN,String MATNR,String supplier,int page);
    String changePurchaseSale(String salecate, int page);
    String changePurchaseSaleSearch(String EBELN,String MATNR, String supplier,int page);

    Push pushSale(PushSale pushSale);
    String Remain(Select select);

    Push delete(Delete delete);


//    String getOddNumbers(String maxOddNumbers,Long id);


}
