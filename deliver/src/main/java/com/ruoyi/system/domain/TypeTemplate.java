package com.ruoyi.system.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TypeTemplate {
    String purchaseOrder;
    String thingOrder;
    String supplier;
    String flag;
//    Date orrDate;
//    Date deeDate;

    String orDate;
    String deDate;
}
