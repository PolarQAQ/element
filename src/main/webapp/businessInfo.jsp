<%@ page import="org.example.entity.Business" %>
<%@ page import="org.example.entity.Food" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.entity.Cart" %><%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/16
  Time: 下午2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商家信息</title>
    <!-- <link href="css/businessList.css" rel="stylesheet"> -->
    <link href="framework/reset.css" rel="stylesheet">
    <link rel="stylesheet"
          href="framework/font-awesome/css/font-awesome.min.css">
    <!-- <link href=""> -->
    <link rel="stylesheet" type href="css/businessInfo.css">
</head>
<body>
<div class="wrapper">
    <header>
        <p>商家列表</p>
    </header>
    <%
        Business business = new Business();
        business = (Business) request.getAttribute("business");
        List<Food> foodList = (List<Food>) request.getAttribute("foodList");
        List<Cart> cartList = (List<Cart>) request.getAttribute("cartList");
    %>
    <div class="business-logo">
        <img src=<%=business.getBusinessImg()%>>
    </div>
    <div class="business-info">
        <h3><%=business.getBusinessName()%>
        </h3>
        <p>&#165;<%=business.getStartPrice()%>起送 | &#165; <%=business.getDeliveryPrice()%>配送</p>
        <p><%=business.getBusinessExplain()%>
        </p>
    </div>
    <ul class="food">
        <%
            for (Food food : foodList) {

        %>
        <li id="<%=food.getFoodId()%>">
            <div class="food-left">
                <img src="<%=food.getFoodImg()%>" alt>
                <div class="food-left-info">
                    <h3><%=food.getFoodName()%>
                    </h3>
                    <p><%=food.getFoodExplain()%>
                    </p>
                    <p>&#165;<%=food.getFoodPrice()%>
                    </p>
                </div>
            </div>
            <div class="food-right">
                <div>
                    <i class="fa fa-minus-circle" onclick="minusFood(<%=food.getFoodId()%>)"></i>
                </div>
                <p><span>
                    <%
                        if (cartList != null) {
                            for (Cart cart : cartList) {
                                if (food.getFoodId() == cart.getFoodId()) {
                                    out.print(cart.getQuantity());
                                }
                            }
                        }
                    %>
                </span></p>
                <div>
                    <i class="fa fa-plus-circle" onclick="plusFood(<%=food.getFoodId()%>)"></i>
                </div>
            </div>
        </li>
        <%
            }
        %>
    </ul>
    <div class="cart">
        <%
            int quantityTotal = 0;
            double sum = 0.0;
            if (cartList != null) {
                for (Cart cart : cartList) {
                    quantityTotal += cart.getQuantity();
                    sum += cart.getQuantity() * cart.getFood().getFoodPrice();
                }
            }
        %>
        <div class="cart-left">
            <div class="cart-left-icon">
                <i class="fa fa-shopping-cart"></i>
                <div class="cart-left-icon-quantity" id="quantityTotal">
                    <%= quantityTotal %>
                </div>
            </div>
            <div class="cart-left-info">
                <p id="sum">&#165;<%= sum %>
                </p>
                <p>另需配送费<%=business.getDeliveryPrice()%>元</p>
            </div>
        </div>
        <%--        达到起送费--%>
        <div class="cart-right"
             onclick="location.href='orderConfirm?userId=1&businessId=<%=business.getBusinessId()%>'">
            <div class="cart-right-item">
                去结算
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    var foodList = document.getElementsByTagName("ul");
    var foods = foodList[0].getElementsByTagName("li");

    for (var i = 0; i < foods.length; i++) {
        var span = foods[i].getElementsByTagName("span")[0];
        if (span.innerText <= 0) {
            foods[i].getElementsByTagName("div")[3].innerHTML = "";
        }
    }

    function plusFood(foodId) {
        var li = document.getElementById(foodId);

        if (li.getElementsByTagName("div")[3].innerHTML == "") {
            var minusHtml = '<li class="fa fa-minus-circle" onclick="minusFood(' + foodId + ')"></li>';

            li.getElementsByTagName("div")[3].innerHTML = minusHtml;

            li.getElementsByTagName("span")[0].innerText = 1;

            var xhr = new XMLHttpRequest();
            var url = "cartSave?userId=1&businessId=" + <%=business.getBusinessId()%> +"&foodId=" + foodId;
            xhr.open("GET", url, true);
            xhr.send();
        } else {
            li.getElementsByTagName("span")[0].innerText = parseInt(li.getElementsByTagName("span")[0].innerText) + 1;
            var xhr = new XMLHttpRequest();
            var url = "cartUpdate?userId=1&businessId=" + <%=business.getBusinessId()%> +"&foodId=" + foodId;
            url += "&quantity=" + li.getElementsByTagName("span")[0].innerText;
            xhr.open("GET", url, true);
            xhr.send();
        }
        document.all.quantityTotal.innerText = parseInt(document.all.quantityTotal.innerText) + 1;
        var price = li.getElementsByTagName("div")[1].getElementsByTagName("p")[1].innerHTML.substring(1);
        var sum = document.getElementById("sum").innerHTML.substring(1);
        var total = parseFloat(sum) + parseFloat(price);
        document.getElementById("sum").innerHTML = "&#165;" + total;
    }

    function minusFood(foodId) {
        var li = document.getElementById(foodId);
        li.getElementsByTagName("span")[0].innerText = parseInt(li.getElementsByTagName("span")[0].innerText) - 1;

        if (li.getElementsByTagName("span")[0].innerText <= 0) {
            li.getElementsByTagName("div")[3].innerHTML = "";
            li.getElementsByTagName("span")[0].innerText = "";

            var xhr = new XMLHttpRequest();
            var url = "cartRemove?userId=1&businessId=" + <%=business.getBusinessId()%> + "&foodId=" + foodId;
            // url += "&quantity=" + li.getElementById()
            xhr.open("GET", url, true);
            xhr.send();
        } else {
            // li.getElementsByTagName("span")[0].innerText = parseInt(li.getElementsByTagName("span")[0].innerText) - 1;
            var xhr = new XMLHttpRequest();
            var url = "cartUpdate?userId=1&businessId=" + <%=business.getBusinessId()%> +"&foodId=" + foodId;
            url += "&quantity=" + li.getElementsByTagName("span")[0].innerText;
            xhr.open("GET", url, true);
            xhr.send();
        }

        document.all.quantityTotal.innerText = parseInt(document.all.quantityTotal.innerText) - 1;

        var price = li.getElementsByTagName("div")[1].getElementsByTagName("p")[1].innerHTML.substring(1);
        var sum = document.getElementById("sum").innerHTML.substring(1);
        var total = parseFloat(sum) - parseFloat(price);
        document.getElementById("sum").innerHTML = "&#165;" + total;
    }

</script>
</html>
