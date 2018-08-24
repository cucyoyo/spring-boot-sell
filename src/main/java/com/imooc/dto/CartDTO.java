package com.imooc.dto;

import lombok.Data;

// 数据传输对象 dto： 专门在各个层之间传输数据用的
// 购物车

@Data
public class CartDTO {

    /** 商品Id. */
    private String productId;

    /** 数量. */
    private Integer productQuantity;

    public CartDTO(String productId, Integer productQuantity) {
        this.productId = productId;
        this.productQuantity = productQuantity;
    }
}
