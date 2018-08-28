package com.imooc.form;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import java.math.BigDecimal;


@Data
public class ProductForm {


    private String productId;

    /** 名字. */
    @NotEmpty(message = "名字必填")
    private String productName;

    /** 单价. */
    @NotEmpty(message = "单价必填")
    private BigDecimal productPrice;

    /** 库存. */
    @NotEmpty(message = "库存必填")
    private Integer productStock;

    /** 描述. */
//    @NotEmpty(message = "姓名必填")
    private String productDescription;

    /** 小图. */
    @NotEmpty(message = "小图链接必填")
    private String productIcon;

    /** 类目编号. */
    @NotEmpty(message = "类目编号必填")
    private Integer categoryType;
}
