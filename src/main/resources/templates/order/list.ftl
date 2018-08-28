<html>
    <#include  "../common/header.ftl">

    <body>
        <div id="wrapper" class="toggled">

            <#--边栏sidebar-->
            <#include "../common/nav.ftl">

            <#--主要内容content-->
            <div id="page-content-wrapper">

                <div class="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <table class="table table-bordered table-hover table-condensed">
                        <thead>
                        <tr>
                            <th>订单ID</th>
                            <th>姓名</th>
                            <th>手机号</th>
                            <th>地址</th>
                            <th>金额</th>
                            <th>订单状态</th>
                            <th>订单状态</th>
                            <th>创建时间</th>
                            <#--注意这里占了两列-->
                            <th colspan="2">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list orderDTOPage.content as orderDTO>
                            <tr>
                                <td>${orderDTO.orderId}</td>
                                <td>${orderDTO.buyerName}</td>
                                <td>${orderDTO.buyerPhone}</td>
                                <td>${orderDTO.buyerAddress}</td>
                                <td>${orderDTO.orderAmount}</td>
                                <td>${orderDTO.orderStatus}</td>
                                <#--注意这里获取枚举信息时做的操作-->
                                <td>${orderDTO.getOrderStatusEnum().getMessage()}</td>
                                <td>${orderDTO.createTime}</td>
                                <td>
                                    <a href="/sell/seller/order/detail?orderId=${orderDTO.orderId}">详情</a>
                                </td>
                                <td>
                                    <#if orderDTO.getOrderStatusEnum().message == "新订单">
                                        <a href="/sell/seller/order/cancel?orderId=${orderDTO.orderId}">取消</a>
                                    <#else>

                                    </#if>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            <#--分页-->
                <div class="span12">
                    <ul class="pagination pull-right">
                        <#if currentPage lte 1>
                            <li class="disabled"><a href="#">上一页</a></li>
                        <#else>
                            <li><a href="/sell/seller/order/list?page=${currentPage-1}&size=${size}">上一页</a></li>
                        </#if>

                        <#list 1..orderDTOPage.getTotalPages() as index>

                            <#if currentPage == index>
                                <li class="disabled"><a href="#">${index}</a></li>
                            <#else>
                                <li><a href="/sell/seller/order/list?page=${index}&size=${size}">${index}</a></li>
                            </#if>
                        </#list>

                        <#if currentPage gte orderDTOPage.getTotalPages()>
                            <li class="disabled"><a href="#">下一页</a></li>
                        <#else>
                            <li><a href="/sell/seller/order/list?page=${currentPage+1}&size=${size}">下一页</a></li>
                        </#if>
                    </ul>
                </div>
            </div>
        </div>
            </div>
        </div>
    </body>

</html>
