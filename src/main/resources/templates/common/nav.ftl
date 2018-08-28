<nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
    <ul class="nav sidebar-nav">
        <li class="sidebar-brand">
            <a href="/sell/seller/order/list">
                卖家管理系统
            </a>
        </li>
        <li class="dropdown open">
            <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">订单</li>
                <li><a href="/sell/seller/order/list"><i class="fa fa-fw fa-list-alt"></i> 订单列表</a></li>
            </ul>
        </li>
        <li class="dropdown open">
            <#--<a href="#dropdown-menu-product" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-plus"></i> 商品 <span class="caret"></span></a>-->
            <ul class="dropdown-menu" id="dropdown-menu-product" role="menu">
                <li class="dropdown-header">商品</li>
                <li><a href="/sell/seller/product/list">商品列表</a></li>
                <li><a href="/sell/seller/product/index">商品新增</a></li>
            </ul>
        </li>
        <li class="dropdown open">
            <#--<a href="#dropdown-menu-cate" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"><i class="fa fa-fw fa-plus"></i> 类目 <span class="caret"></span></a>-->
            <ul class="dropdown-menu" id="dropdown-menu-cate" role="menu">
                <li class="dropdown-header">类目</li>
                <li><a href="/sell/seller/category/list">类目列表</a></li>
                <li><a href="/sell/seller/category/index">类目新增</a></li>
            </ul>
        </li>

        <li class="dropdown open">
            <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">登出</li>
                <li><a href="/sell/seller/logout"><i class="fa fa-fw fa-list-alt"></i> 登出</a></li>
            </ul>
        </li>

    </ul>
</nav>