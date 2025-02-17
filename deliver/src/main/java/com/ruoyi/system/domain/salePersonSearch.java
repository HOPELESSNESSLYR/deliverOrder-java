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
public class salePersonSearch {
    @JsonProperty("EBELN")
    private String EBELN;
    @JsonProperty("MATNR")
    private String MATNR;
//    @JsonProperty("LIFNR")
//    private String LIFNR;
    @JsonProperty("salecate")
    private String salecate;
    int page;
    public int getPage() {
        return page;
    }
    public String getEBELN() {
        return EBELN;
    }
    public String getMATNR() {
        return MATNR;
    }
//    public String getLIFNR() {
//        return LIFNR;
//    }
//    public void setLIFNR(String LIFNR) {
//        this.LIFNR = LIFNR;
//    }
    public String getSalecate() {
        return salecate;
    }
    public void setEBELN(String EBELN) {
        this.EBELN = EBELN;
    }
    public void setMATNR(String MATNR) {
        this.MATNR = MATNR;
    }
    public void setPage(int page) {
        this.page = page;
    }
    public void setSalecate(String salecate) {
        this.salecate = salecate;
    }

    
}
