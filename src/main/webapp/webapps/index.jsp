<%--
  Created by IntelliJ IDEA.
  User: yangm
  Date: 2024/7/14
  Time: 7:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>饿了么首页</title>
  <link href="framework/font-awesome/css/font-awesome.min.css"
        rel="stylesheet">
  <link href="css/index.css" rel="stylesheet">
  <link href="framework/icon.css" rel="stylesheet">
  <link href="framework/reset.css" rel="stylesheet">
  <script src="js/index.js"></script>
</head>
<!-- 容器 -->
<body>
<div class="wrapper">
  <header>
    <div class="icon-location-box">
      <div class="icon-location"></div>
    </div>
    <div class="location-text">
      北京市海淀区
      <i class="fa fa-caret-down"></i>
    </div>
  </header>
  <div class="search">
    <div class="search-fixed-top" id="fixedBox">
      <div class="search-box">
        <i class="fa fa-search"></i> 搜索饿了么商家、商品名称
      </div>
    </div>
  </div>
  <ul class="foodtype">
    <li onclick="location.href='aaa?orderTypeId=1'">
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>美食</p>
    </li>
    <li onclick="location.href='businessList?orderType=2'">
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>午餐</p>
    </li>
    <li onclick="location.href='businessList?orderType=3'">
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>买菜</p>
    </li>
    <li onclick="location.href='businessList?orderType=4'">
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>快餐便当</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>果蔬生鲜</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>商超便利</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>地方小吃</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>甜品饮品</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>异国料理</p>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png" alt>
      <p>鲜花蛋糕</p>
    </li>
  </ul>
  <div class="banner">
    <h3>品质套餐</h3>
    <p>搭配齐全吃得好</p>
    <a href="#">立即购买 &gt;</a>
  </div>
  <div class="supermember">
    <div class="left">
      <img src alt>
      <h3>超级会员</h3>
      <p>&#8226; 每月享超值权益</p>
    </div>
    <div class="right">
      立即开通 &gt;
    </div>
  </div>
  <div class="recommend">
    <div class="recommend-line"></div>
    <p>推荐商家</p>
    <div class="recommend-line"></div>
  </div>
  <ul class="recommendtype">
    <li>综合排序<i class="fa fa-caret-down"></i></li>
    <li>距离最近</li>
    <li>销量最高</li>
    <li>筛选<i class="fa fa-filter"></i></li>
  </ul>
  <ul class="business">
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <li>
      <img src="img/37de4aed99824ec48d9334332bbb2d47.png"
           alt="商家图片">
      <div class="business-info">
        <div class="business-info-h">
          <h3>万家饺子（软件园E18店）</h3>
          <div class="business-info-like">&#8226;</div>
        </div>
        <div class="business-info-star">
          <div class="business-info-star-left">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <p>4.9 月售345单</p>
          </div>
          <div class="business-info-star-right">
            蜂鸟专送
          </div>
        </div>
        <div class="business-info-delivery">
          <p>&#165;15起送 | &#165;3配送</p>
          <p>3.22km | 30分钟</p>
        </div>
        <div class="business-info-explain">
          <div>各种饺子</div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon">
              新
            </div>
            <p>饿了么新用户立减9元</p>
          </div>
          <div class="business-info-promotion-right">
            <p>两个活动</p>
            <i class="fa fa-caret-down"></i>
          </div>
        </div>
        <div class="business-info-promotion">
          <div class="business-info-promotion-left">
            <div
                    class="business-info-promotion-left-icon"
                    style="background-color: #f1884f;">
              特
            </div>
            <p>特价商品5元起</p>
          </div>
        </div>
      </div>
    </li>
    <!-- 更多商家信息... -->
  </ul>
  <ul class="footer">
    <li>
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

