<%@ page import="org.example.entity.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.entity.Food" %>
<%@ page import="org.example.entity.Business" %><%--
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
    <%
        //        List<Food> foodList = (List<Food>) request.getAttribute("foodList");
        List<Cart> cartList = (List<Cart>) request.getAttribute("cartList");
        Business business = new Business();
        if (cartList != null) {
            business = cartList.get(0).getBusiness();
        } else {
            business = new Business();
        }

    %>
    <div class="order-info">
        <h5>订单配送到：</h5>
        <div class="order-info-address">
            <p>河南师范大学</p>
            <i class="fa fa-angle-right"></i>
        </div>
        <p>xxx 175****1234</p>
    </div>
    <%if (business != null) {%>
    <h3><%=business.getBusinessName()%>
    </h3>
    <%
        }
    %>
    <ul class="order-detailed">
        <%
            double total = 0;
            if (cartList != null) {

                for (Cart cart : cartList) {
//                    Food food = cart.getFood();
                    total += (cart.getQuantity() * cart.getFfoodPrice());
        %>
        <li>
            <div class="order-detailed-left">
                <!-- TODO -->
                <img src="<%=cart.getFfoodImg()%>">
                <p><%=cart.getFfoodName()%>* <%=cart.getQuantity()%>
                </p>
            </div>
            <p>&#165;<%=cart.getFfoodPrice() * cart.getQuantity()%>
            </p>
        </li>
        <%
                }
            }
        %>

    </ul>

    <div class="order-deliveryfee">
        <p>配送费</p>
        <%
            if (business != null) {
        %>
        <p>&#165;<%=business.getDeliveryPrice()%>
        </p>
        <%
            }
        %>
    </div>
    <div class="total">
        <div class="total-left">
            &#165;<%=total + business.getDeliveryPrice()%>
        </div>
        <div class="total-right" onclick="location.href='orderCreate?userId=1&businessId=<%=business.getBusinessId()%>&daId=1&orderTotal=<%=total + business.getDeliveryPrice()%>'"> 去支付</div>
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
</div>
</body>
</html>