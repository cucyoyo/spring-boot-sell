package com.imooc.VO;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * 商品(包含类目) 注意区分ProductInfo
 */
@Data
public class ProductVO {

    @JsonProperty("name") // 对应到json对象的名字
    private String categoryName; // 方便看懂，不直接用json对象的名字

    @JsonProperty("type")
    private Integer categoryType;

    @JsonProperty("foods")
    private List<ProductInfoVO> productInfoVOList;
}
