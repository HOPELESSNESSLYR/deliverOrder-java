package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ruoyi.common.annotation.Excel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Search {
    @JsonProperty("EBELN")
    private String EBELN;
    @JsonProperty("MATNR")
    private String MATNR;
    String supplier;
    int page;

    public String getEBELN() {
        return EBELN;
    }

    public void setEBELN(String EBELN) {
        this.EBELN = EBELN;
    }

    public String getMATNR() {
        return MATNR;
    }

    public void setMATNR(String MATNR) {
        this.MATNR = MATNR;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }
}
