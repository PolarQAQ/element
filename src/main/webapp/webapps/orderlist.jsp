<%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/16
  Time: 下午3:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link href="framework/reset.css" rel="stylesheet">
    <link rel="stylesheet"
          href="framework/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/orderlist.css">
    <script src="js/orderlist.js"></script>
</head>
<body>
<div class="wrapper">
    <header>
        <p>我的订单</p>
    </header>
    <h3>未支付订单信息</h3>

    <ul class="order">
        <li>
            <div class="order-info">
                <p>
                    万家饺子（软件E18店）
                    <i class="fa fa-caret-down"></i>
                </p>
                <div class="order-info-right">
                    <p>&#165;49</p>
                    <div class="order-info-right-icon">去支付</div>
                </div>
            </div>
            <ul class="order-detailed">
                <li>
                    <p>纯肉鲜肉（水饺）*2</p>
                    <p>&#165;15</p>
                </li>
                <li>
                    <p>纯肉鲜肉（水饺）*2</p>
                    <p>&#165;16</p>
                </li>
                <li>
                    <p>配送费</p>
                    <p>&#165;3</p>
                </li>
            </ul>
        </li>

    </ul>

    <div class="bbb"></div>

    <h3>已支付订单信息</h3>

    <ul class="order">
        <li>
            <div class="order-info">
                <p>
                    万家饺子（软件E18店）
                    <i class="fa fa-caret-down"></i>
                </p>
                <div class="order-info-right">
                    <p>&#165;49</p>
                    <!--                    <div class="order-info-right-icon">去支付</div>-->
                </div>
            </div>
            <ul class="order-detailed">
                <li>
                    <p>纯肉鲜肉（水饺）*2</p>
                    <p>&#165;15</p>
                </li>
                <li>
                    <p>纯肉鲜肉（水饺）*2</p>
                    <p>&#165;16</p>
                </li>
                <li>
                    <p>配送费</p>
                    <p>&#165;3</p>
                </li>
            </ul>
        </li>

    </ul>
    <ul class="footer">
        <li onclick="location.href='index.html'">
            <i class="fa fa-home"></i>
            <p>首页</p>
        </li>
        <li>
            <i class="fa fa-compass"></i>
            <p>发现</p>
        </li>
        <li onclick="location.href='orderlist.html'">
            <i class="fa fa-file-text-o"></i>
            <p>订单</p>
        </li>
        <li>
            <i class="fa fa-user-o"></i>
            <p>我的</p>
        </li>
    </ul>
</div>

</body>
</html>
