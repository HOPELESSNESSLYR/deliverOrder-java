package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Delete {
    @JsonProperty("asnNo")
    private String asnNo;
    @JsonProperty("poNo")
    private String poNo;
    @JsonProperty("asnLine")
    private String lineNumber;
    @JsonProperty("poLineNo")
    private int poLineNo;
}
