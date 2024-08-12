<%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/16
  Time: 下午2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>订单页面</title>
    <link href="framework/reset.css" rel="stylesheet">
    <link rel="stylesheet"
          href="framework/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="" href="css/order.css">
</head>
<body>
<div class="wrapper">
    <header>
        <p>确认订单</p>
    </header>
    <div class="order-info">
        <h5>订单配送到：</h5>
        <div class="order-info-address">
            <p>河南师范大学</p>
            <i class="fa fa-angle-right"></i>
        </div>
        <p>xxx 175****1234</p>
    </div>
    <h3>万家饺子（软件原E18店）</h3>
    <ul class="order-detailed">
        <li>
            <div class="order-detailed-left">
                <!-- TODO -->
                <img src="" alt="">
                <p>纯肉鲜肉（水饺）* 2</p>
            </div>
            <p>&#165;15</p>
        </li>
    </ul>

    <div class="order-deliveryfee">
        <p>配送费</p>
        <p>&#165;3</p>

    </div>
</div>
</body>
</html>