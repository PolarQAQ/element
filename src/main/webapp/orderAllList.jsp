<%@ page import="org.example.entity.Order" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.entity.OrderDetailed" %><%--
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
    <link rel="stylesheet" href="css/orderAllList.css">
    <script src="js/orderlist.js"></script>
</head>
<body>
<div class="wrapper">
    <header>
        <p>我的订单</p>
    </header>
    <%
        List<Order> list = (List<Order>) request.getAttribute("orderList");
    %>
    <ul class="order">
        <%
            if (list != null && !list.isEmpty()) {

                for (Order order : list) {

        %>
        <li>
            <div class="order-info">
                <p>
                    <%=order.getBbusinessName()%>
                    <i class="fa fa-caret-down"></i>
                </p>
                <div class="order-info-right">
                    <p>&#165;<%=order.getOrderTotal()%>
                    </p>
                    <div class="order-info-right-icon"
                         onclick="location.href='payment?userId=1&daId=1&orderId=<%=order.getOrderId()%>">
                    </div>
                </div>
            </div>
            <%
                for (OrderDetailed dl : order.list) {
            %>
            <ul class="order-detailed">
                <li>
                    <p><%=dl.getFfoodName()%>*<%=dl.getQuantity()%>
                    </p>
                    <p>&#165;<%=dl.getQuantity() * dl.getFfoodPrice()%>
                    </p>
                </li>
                <li>
                    <p>配送费</p>
                    <p>&#165;<%=order.getBdeliveryPrice()%>
                    </p>
                </li>
            </ul>
        </li>
        <%
                    }
                }
            }
        %>
    </ul>



    <ul class="footer">
        <li>
            <i class="fa fa-home" onclick="location.href='/'"></i>
            <p>首页</p>
        </li>
        <li>
            <i class="fa fa-compass" onclick="location.href='businessList'"></i>
            <p>发现</p>
        </li>
        <li onclick="location.href='orderConfirm'">
            <i class="fa fa-file-text-o"></i>
            <p>订单</p>
        </li>
        <li onclick="location.href='orderState'">
            <i class="fa fa-user-o"></i>
            <p>我的</p>
        </li>
    </ul>
</div>

</body>
</html>
