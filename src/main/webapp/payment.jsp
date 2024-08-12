<%@ page import="org.example.entity.Order" %>
<%@ page import="org.example.entity.OrderDetailed" %>
<%@ page import="java.util.List" %><%--
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
    <%
        Order order = (Order) request.getAttribute("order");
        if (order != null) {
    %>
    <h3>订单信息</h3>
    <div class="order-info">
        <p>
            <%= order.getBbusinessName()%>
            <i class="fa fa-caret-down" id="showBtn"></i>
        </p>
        <p>&#165;<%=order.getOrderTotal()%>
        </p>
    </div>
    <ul class="order-detailed" id="detailedBox">
        <%
            List<OrderDetailed> orderDetailedList = order.getList();
            if (orderDetailedList != null) {

                for (OrderDetailed orderDetailed : orderDetailedList) {
        %>
        <li>
            <p><%=orderDetailed.getFfoodName()%>* <%=orderDetailed.getQuantity()%>
            </p>
            <p>&#165;<%=orderDetailed.getFfoodPrice() * orderDetailed.getQuantity()%>
            </p>
        </li>
        <%
            }
        %>
        <li>
            <p>配送费</p>
            <p>&#165;<%=order.getBdeliveryPrice()%>
            </p>
        </li>
    </ul>
    <%
        }
    %>
    <ul class="payment-type">
        <li>
            <img src="img/22935961_1.jpg" alt="">
            <i class="fa fa-check-circle"></i>
        </li>
        <li>
            <img src="img/OIP.jpg" alt="">
            <i class="fa fa-check-circle"></i>
        </li>
    </ul>

    <div class="payment-button">
        <button onclick="sendData(<%=order.getOrderId()%>)">确认支付</button>
    </div>

    <ul class="footer">
        <li>
            <i class="fa fa-home" onclick="location.href='/'"></i>
            <p>首页</p>
        </li>
        <li>
            <i class="fa fa-compass" onclick="location.href='businessList'"></i>
            <p>发现</p>
        </li>
        <li onclick="location.href='selectAllOrder'">
            <i class="fa fa-file-text-o"></i>
            <p>订单</p>
        </li>
        <li onclick="location.href='orderState'">
            <i class="fa fa-user-o"></i>
            <p>我的</p>
        </li>
    </ul>
    <%
        }
    %>
</div>
</body>
<script>
    function sendData(orderId) {
        // 创建XMLHttpRequest对象
        var xhr = new XMLHttpRequest();
        var url = "pay?userId=1&orderId=" + encodeURIComponent(orderId);
        // xhr.responseText="支付成功";
        // 配置请求方法和URL
        xhr.open("GET", url, true);
        // xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        // 处理响应
        xhr.send();
        xhr.onload = function () {
            // 请求成功后的处理逻辑
            alert("支付成功，即将返回首页");
            window.location.href = "/"
        }
    }
</script>

</html>
