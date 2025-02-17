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
public class salePerson {
    @JsonProperty("salecate")
    String salecate;
    int page;
    public String getSalecate() { return salecate;}
    public void setSalecate(String salecate) { this.salecate = salecate;}

    public int getPage() { return page;}
    public void setPage(int page) { this.page = page;}
}
