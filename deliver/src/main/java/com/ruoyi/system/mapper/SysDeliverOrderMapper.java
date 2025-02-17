package com.ruoyi.system.mapper;

import java.util.List;

import com.ruoyi.system.domain.Delete;
import com.ruoyi.system.domain.PushSale;
import com.ruoyi.system.domain.Select;
import com.ruoyi.system.domain.SysDeliverOrder;

/**
 * 送货单Mapper接口
 * 
 * @author liyanru
 * @date 2024-09-18
 */
public interface SysDeliverOrderMapper 
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
    public int updateStatus(Long[] ids);
    public int updateStatusById(Long[] id);
    public int updatePutStatus(Long[] ids);
    public int updatePutStatusById(Long[] id);
    /**
     * 删除送货单
     * 
     * @param id 送货单主键
     * @return 结果
     */
    public int deleteSysDeliverOrderById(Long id);

    /**
     * 批量删除送货单
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysDeliverOrderByIds(Long[] ids);

    String findNewOddNumbers(String asnNo);

    int updatePushSale(PushSale pushSale);
    

    Select updateSelect(Select select);

    String remainSelect(Select select);

    int delete(Delete delete);

}
