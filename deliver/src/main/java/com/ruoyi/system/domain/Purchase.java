package com.ruoyi.system.domain;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Purchase {
//    String purchaseOrder;
//    String thingOrder;
//    String supplier;
//    int page;
    String EBELN;
    String MATNR;
    String supplier;
    int page;
}
