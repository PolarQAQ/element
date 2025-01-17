<%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/16
  Time: 下午3:00
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
    <link rel="stylesheet" type="" href="css/payment.css">
    <script src="js/payment.js"></script>
</head>
<body>
<div class="wrapper">
    <header>
        <p>在线支付</p>
    </header>
    <h3>订单信息</h3>
    <div class="order-info">
        <p>
            万家饺子（软件园E18店）
            <i class="fa fa-caret-down" id="showBtn"></i>
        </p>
        <p>&#165;49</p>
    </div>
    <ul class="order-detailed" id="detailedBox">
        <li>
            <p>纯肉鲜肉（水饺）* 2</p>
            <p>&#165;49</p>
        </li>
        <li>
            <p>纯肉鲜肉（水饺）* 2</p>
            <p>&#165;49</p>
        </li>
    </ul>
    <ul class="payment-type">
        <li>
            <img src="" alt="">
            <i class="fa fa-check-circle"></i>
        </li>
        <li>
            <img src="" alt="">
            <i class="fa fa-check-circle"></i>
        </li>
    </ul>

    <div class="payment-button">
        <button onclick="location.href='index.html'">确认支付</button>
    </div>

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
