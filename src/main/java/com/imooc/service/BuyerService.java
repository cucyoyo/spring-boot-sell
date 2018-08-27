package com.imooc.service;

import com.imooc.dto.OrderDTO;

/**
 * 买家service，为了解决查询订单、取消订单的安全性，判断openid
 */
public interface BuyerService {

    //查询一个订单
    OrderDTO findOrderOne(String openid, String orderId);

    //取消订单
    OrderDTO cancelOrder(String openid, String orderId);
}
