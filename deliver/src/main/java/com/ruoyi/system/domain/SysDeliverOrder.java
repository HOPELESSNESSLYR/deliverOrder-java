package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 送货单对象 sys_deliver_order
 * 
 * @author liyanru
 * @date 2024-09-18
 */
public class SysDeliverOrder extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号ID */
    private Long id;

    @Excel(name = "送货单ID")
    private Long deliverId;

    /** 供应商编码 */
    @Excel(name = "供应商编码")
    private String supplieId;

    /** 送货订单编号(送货单单号) */
    @Excel(name = "送货订单编号(送货单单号)")
    private String asnNo;

    /** 采购订单编号(采购单单号) */
    @Excel(name = "采购订单编号(采购单单号)")
    private String poNo;

    /** 工厂 */
    @Excel(name = "工厂")
    private String factory;

    /** 送货单行号 */
    @Excel(name = "送货单行号")
    private Long lineNumber;

    /** 项目类别 */
    @Excel(name = "项目类别")
    private String projectCategory;

    /** 下单日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
//    @Excel(name = "下单日期", width = 30, dateFormat = "yyyy-MM-dd")
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date orderDate;

    /** 交货日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "送货日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date deliveryDate;

    /** 物料编码(物料号) */
    @Excel(name = "物料编码(物料号)")
    private String sku;

    /** 物料描述（物料名） */
    @Excel(name = "物料描述", readConverterExp = "物=料名")
    private String skuDescr;

    /** 下单数量 */
    @Excel(name = "下单数量")
    private BigDecimal orderQuantity;

    /** 业务范围 */
    @Excel(name = "业务范围")
    private String lotatt15;

    /** 已交货数量 */
    @Excel(name = "已交货数量")
    private BigDecimal deliveredQuantity;

    /** 送货数量 */
    @Excel(name = "送货数量")
    private BigDecimal expectedQty;

    /** 送货重量 */
    @Excel(name = "送货重量")
    private BigDecimal totalNetWeight;

    /** 基本计量单位 */
    @Excel(name = "基本计量单位")
    private String packUom;

    /** 重量单位 */
    @Excel(name = "重量单位")
    private String udf03;

    /** 过量收货比例 */
    @Excel(name = "过量收货比例")
    private String overRcvPercentage;

    /** 无限制收货 */
    @Excel(name = "无限制收货")
    private String udf04;

    /** 收到质检库存（x表示质检
空表示不需质检） */
    @Excel(name = "收到质检库存", readConverterExp = "x=表示质检 空表示不需质检")
    private String qcStatus;

    /** SAP库存地点 */
    @Excel(name = "SAP库存地点")
    private String stockLocat;

    /** 收货工厂编码 */
    @Excel(name = "收货工厂编码")
    private String lotatt14;

    /** 标签数量 */
    @Excel(name = "标签数量")
    private BigDecimal labelNumber;

    /** 标签重量 */
    @Excel(name = "标签重量")
    private BigDecimal labelWeight;

    /** 材质 */
    @Excel(name = "材质")
    private String material;

    /** 计划到达日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "计划到达日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expectedArriveTime1;

    /** 送达地点 */
    @Excel(name = "送达地点")
    private String placeOfDelivery;

    /** 创建者 */
    @Excel(name = "创建者")
    private String addWho;

    /** 创建时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "创建时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date addTime;

    /** 行号 */
    @Excel(name = "行号")
    private Long poLineNo;

    /** 规格 */
    @Excel(name = "规格")
    private String specification;

    @Excel(name = "审核状态")
    private String reviewStatus;

    @Excel(name = "机台")
    private String machine;

    @Excel(name = "冲销说明")
    private String cancelBill;

    @Excel(name = "剩余发货数")
    private Long remainDeliver;

    @Excel(name = "仓管人")
    private String manager;

    public void setId(Long id) { this.id = id; }
    public Long getId() { return id; }

    public void setDeliverId(Long deliverId) 
    {
        this.deliverId = deliverId;
    }

    public Long getDeliverId() { return deliverId;}
    public void setSupplieId(String supplieId)
    {
        this.supplieId = supplieId;
    }

    public String getSupplieId()
    {
        return supplieId;
    }
    public void setAsnNo(String asnNo)
    {
        this.asnNo = asnNo;
    }

    public String getAsnNo()
    {
        return asnNo;
    }
    public void setPoNo(String poNo)
    {
        this.poNo = poNo;
    }

    public String getPoNo()
    {
        return poNo;
    }
    public void setFactory(String factory) 
    {
        this.factory = factory;
    }

    public String getFactory() 
    {
        return factory;
    }
    public void setLineNumber(Long lineNumber) 
    {
        this.lineNumber = lineNumber;
    }

    public Long getLineNumber() 
    {
        return lineNumber;
    }
    public void setProjectCategory(String projectCategory) 
    {
        this.projectCategory = projectCategory;
    }

    public String getProjectCategory() 
    {
        return projectCategory;
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
    public void setOrderQuantity(BigDecimal orderQuantity) 
    {
        this.orderQuantity = orderQuantity;
    }

    public BigDecimal getOrderQuantity() 
    {
        return orderQuantity;
    }
    public void setLotatt15(String lotatt15) 
    {
        this.lotatt15 = lotatt15;
    }

    public String getLotatt15() 
    {
        return lotatt15;
    }
    public void setDeliveredQuantity(BigDecimal deliveredQuantity) 
    {
        this.deliveredQuantity = deliveredQuantity;
    }

    public BigDecimal getDeliveredQuantity() 
    {
        return deliveredQuantity;
    }
    public void setExpectedQty(BigDecimal expectedQty) 
    {
        this.expectedQty = expectedQty;
    }

    public BigDecimal getExpectedQty() 
    {
        return expectedQty;
    }
    public void setTotalNetWeight(BigDecimal totalNetWeight) 
    {
        this.totalNetWeight = totalNetWeight;
    }

    public BigDecimal getTotalNetWeight() 
    {
        return totalNetWeight;
    }
    public void setPackUom(String packUom) 
    {
        this.packUom = packUom;
    }

    public String getPackUom() 
    {
        return packUom;
    }
    public void setUdf03(String udf03) 
    {
        this.udf03 = udf03;
    }

    public String getUdf03() 
    {
        return udf03;
    }
    public void setOverRcvPercentage(String overRcvPercentage) 
    {
        this.overRcvPercentage = overRcvPercentage;
    }

    public String getOverRcvPercentage() 
    {
        return overRcvPercentage;
    }
    public void setUdf04(String udf04) 
    {
        this.udf04 = udf04;
    }

    public String getUdf04() 
    {
        return udf04;
    }
    public void setQcStatus(String qcStatus) 
    {
        this.qcStatus = qcStatus;
    }

    public String getQcStatus() 
    {
        return qcStatus;
    }
    public void setStockLocat(String stockLocat)
    {
        this.stockLocat = stockLocat;
    }

    public String getStockLocat()
    {
        return stockLocat;
    }
    public void setLotatt14(String lotatt14) 
    {
        this.lotatt14 = lotatt14;
    }

    public String getLotatt14() 
    {
        return lotatt14;
    }
    public void setLabelNumber(BigDecimal labelNumber) 
    {
        this.labelNumber = labelNumber;
    }

    public BigDecimal getLabelNumber() 
    {
        return labelNumber;
    }
    public void setLabelWeight(BigDecimal labelWeight) 
    {
        this.labelWeight = labelWeight;
    }

    public BigDecimal getLabelWeight() 
    {
        return labelWeight;
    }
    public void setMaterial(String material) 
    {
        this.material = material;
    }

    public String getMaterial() 
    {
        return material;
    }
    public void setExpectedArriveTime1(Date expectedArriveTime1) 
    {
        this.expectedArriveTime1 = expectedArriveTime1;
    }

    public Date getExpectedArriveTime1() 
    {
        return expectedArriveTime1;
    }
    public void setPlaceOfDelivery(String placeOfDelivery) 
    {
        this.placeOfDelivery = placeOfDelivery;
    }

    public String getPlaceOfDelivery() 
    {
        return placeOfDelivery;
    }
    public void setAddWho(String addWho) 
    {
        this.addWho = addWho;
    }

    public String getAddWho() 
    {
        return addWho;
    }
    public void setAddTime(Date addTime) 
    {
        this.addTime = addTime;
    }

    public Date getAddTime() 
    {
        return addTime;
    }
    public void setPoLineNo(Long poLineNo) 
    {
        this.poLineNo = poLineNo;
    }

    public Long getPoLineNo() 
    {
        return poLineNo;
    }
    public void setSpecification(String specification)
    {
        this.specification = specification;
    }

    public String getSpecification()
    {
        return specification;
    }
    public void setReviewStatus(String reviewStatus)
    {
        this.reviewStatus = reviewStatus;
    }

    public String getReviewStatus()
    {
        return reviewStatus;
    }

    public void setMachine(String machine) {this.machine = machine;}
    public String getMachine() {return machine;}

    public void setCancelBill(String cancelBill) {this.cancelBill = cancelBill;}
    public String getCancelBill() {return cancelBill;}

    public Long getRemainDeliver() { return  remainDeliver;}
    public void setRemainDeliver(Long remainDeliver) { this.remainDeliver = remainDeliver;}

    public String getManager() { return manager;}
    public void setManager(String manager) { this.manager = manager;}
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("deliverId", getDeliverId())
            .append("supplieId", getSupplieId())
            .append("asnNo", getAsnNo())
            .append("poNo", getPoNo())
            .append("factory", getFactory())
            .append("lineNumber", getLineNumber())
            .append("projectCategory", getProjectCategory())
            .append("orderDate", getOrderDate())
            .append("deliveryDate", getDeliveryDate())
            .append("sku", getSku())
            .append("skuDescr", getSkuDescr())
            .append("orderQuantity", getOrderQuantity())
            .append("lotatt15", getLotatt15())
            .append("deliveredQuantity", getDeliveredQuantity())
            .append("expectedQty", getExpectedQty())
            .append("totalNetWeight", getTotalNetWeight())
            .append("packUom", getPackUom())
            .append("udf03", getUdf03())
            .append("overRcvPercentage", getOverRcvPercentage())
            .append("udf04", getUdf04())
            .append("qcStatus", getQcStatus())
            .append("stockLocat", getStockLocat())
            .append("lotatt14", getLotatt14())
            .append("labelNumber", getLabelNumber())
            .append("labelWeight", getLabelWeight())
            .append("material", getMaterial())
            .append("expectedArriveTime1", getExpectedArriveTime1())
            .append("placeOfDelivery", getPlaceOfDelivery())
            .append("addWho", getAddWho())
            .append("addTime", getAddTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("poLineNo", getPoLineNo())
                .append("specification", getSpecification())
                .append("reviewStatus", getReviewStatus())
                .append("machine", getMachine())
                .append("cancelBill", getCancelBill())
                .append("remainDeliver", getRemainDeliver())
                .append("manager", getManager())
            .toString();
    }

}
