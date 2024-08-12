<%@ page import="org.example.entity.Business" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/16
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>饿了么商家列表</title>
    <link href="css/businessList.css" rel="stylesheet">
    <link href="framework/reset.css" rel="stylesheet">
    <link rel="stylesheet"
          href="framework/font-awesome/css/font-awesome.min.css">
    <!-- <link href=""> -->
</head>
<body>
<div class="wrapper">
    <header>
        <p>商家列表</p>
    </header>
    <%
        List<Business> businessList = (List<Business>)request.getAttribute("businessList");
    %>

    <ul class="business">
        <%
            for (Business business : businessList) {
        %>
        <li onclick="location.href='businessInfo?userId=1&businessId=<%=business.getBusinessId()%>'">
            <div class="business-img">
                <img src="<%=business.getBusinessImg()%>">

                <div class="business-img-quantity">
<%--                    <%=business.%>--%>
                    3
                </div>
            </div>
            <div class="business-info">
                <h3><%=business.getBusinessName()%></h3>
                <p>&#165;<%=business.getStartPrice()%>起送 | &#165; <%=business.getDeliveryPrice()%>配送</p>
                <p><%=business.getBusinessExplain()%></p>
            </div>
        </li>
        <%
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
