package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 送货计划信息对象 sys_deliver_plan
 * 
 * @author liyanru
 * @date 2024-12-05
 */
public class SysDeliverPlan extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 送货计划信息表 */
    private Long id;

    /** 送货订单编号 */
    @Excel(name = "送货订单编号")
    private String asnNo;

    /** 送货单行号 */
    @Excel(name = "送货单行号")
    private Long lineNumber;


    @Excel(name = "供应商编码")
    private String supplieId;

    /** 采购订单编号 */
    @Excel(name = "采购订单编号")
    private String poNo;

    /** 采购行号 */
    @Excel(name = "采购行号")
    private Long poLineNo;

    /** 物料编码 */
    @Excel(name = "物料编码")
    private String sku;

    /** 物料描述 */
    @Excel(name = "物料描述")
    private String skuDescr;

    /** 业务范围（工厂3012） */
    @Excel(name = "业务范围", readConverterExp = "工=厂3012")
    private String businessScope;

    /** 采购组 */
    @Excel(name = "采购组")
    private String category;

    /** 生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date orderDate;

    /** 送货日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "送货日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deliveryDate;

    /** 送货数量 */
    @Excel(name = "送货数量")
    private BigDecimal deliverQuatity;

    public String getSupplieId() {
		return supplieId;
	}

    public void setSupplieId(String supplieId) {
		this.supplieId = supplieId;
	}

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAsnNo(String asnNo) 
    {
        this.asnNo = asnNo;
    }

    public String getAsnNo() 
    {
        return asnNo;
    }
    public void setLineNumber(Long lineNumber) 
    {
        this.lineNumber = lineNumber;
    }

    public Long getLineNumber() 
    {
        return lineNumber;
    }
    public void setPoNo(String poNo) 
    {
        this.poNo = poNo;
    }

    public String getPoNo() 
    {
        return poNo;
    }
    public void setPoLineNo(Long poLineNo) 
    {
        this.poLineNo = poLineNo;
    }

    public Long getPoLineNo() 
    {
        return poLineNo;
    }
    public void setSku(String sku) 
    {
        this.sku = sku;
    }

    public String getSku() 
    {
        return sku;
    }
    public void setSkuDescr(String skuDescr) 
    {
        this.skuDescr = skuDescr;
    }

    public String getSkuDescr() 
    {
        return skuDescr;
    }
    public void setBusinessScope(String businessScope) 
    {
        this.businessScope = businessScope;
    }

    public String getBusinessScope() 
    {
        return businessScope;
    }
    public void setCategory(String category) 
    {
        this.category = category;
    }

    public String getCategory() 
    {
        return category;
    }
    public void setOrderDate(Date orderDate) 
    {
        this.orderDate = orderDate;
    }

    public Date getOrderDate() 
    {
        return orderDate;
    }
    public void setDeliveryDate(Date deliveryDate) 
    {
        this.deliveryDate = deliveryDate;
    }

    public Date getDeliveryDate() 
    {
        return deliveryDate;
    }
    public void setDeliverQuatity(BigDecimal deliverQuatity) 
    {
        this.deliverQuatity = deliverQuatity;
    }

    public BigDecimal getDeliverQuatity() 
    {
        return deliverQuatity;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("asnNo", getAsnNo())
                .append("supplieId", getSupplieId())
            .append("lineNumber", getLineNumber())
            .append("poNo", getPoNo())
            .append("poLineNo", getPoLineNo())
            .append("sku", getSku())
            .append("skuDescr", getSkuDescr())
            .append("businessScope", getBusinessScope())
            .append("category", getCategory())
            .append("orderDate", getOrderDate())
            .append("deliveryDate", getDeliveryDate())
            .append("deliverQuatity", getDeliverQuatity())
            .toString();
    }
}
