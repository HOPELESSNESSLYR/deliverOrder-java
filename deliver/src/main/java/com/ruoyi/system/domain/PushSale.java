package com.ruoyi.system.domain;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PushSale {
    @JsonProperty("asnNo")
    private String asnNo;
    @JsonProperty("poNo")
    private String poNo;
    @JsonProperty("cancelBill")
    private String cancelBill;
    @JsonProperty("poLineNo")
    private int poLineNo;
}
