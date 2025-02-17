package com.ruoyi.system.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TypeTemplateAddReq {
    String CHARG;
    Integer page;
    String skuDescr;
    BigDecimal labelWeight;
    BigDecimal labelNumber;
    String material;
    Date orderDate;
    Date DATE2;
    String supplieId;
    String poNo;
    Long poLineNo;
    Integer number1;
    Integer number2;
    Integer number3;
    BigDecimal deliveredQuantity;
    String factory;
    String specification;
    String reviewStatus;
    String projectCategory;

}
