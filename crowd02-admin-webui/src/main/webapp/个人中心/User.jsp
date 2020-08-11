<%--
  Created by IntelliJ IDEA.
  User: 周晓宇
  Date: 2020/7/7
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport"/>
    <meta content="yes" name="apple-mobile-web-app-capable"/>
    <meta content="black" name="apple-mobile-web-app-status-bar-style"/>
    <meta content="telephone=no" name="format-detection"/>
    <link href="../css/User.css" rel="stylesheet" type="text/css"/>




</head>
<body>


<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-return"></i>
        </a>
        <div class="aui-center">
            <span class="aui-center-title">个人中心</span>
        </div>
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-sys"></i>
        </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-mer-list">
            <div class="aui-flex-box">
                <div class="aui-flex-box-hd">
                    <img src="" alt="">
                </div>
                <div class="aui-flex-box-bd">
                    <h2>用户名：${param.email}</h2>

                </div>
                <div class="aui-flex-box-fr">
                    <i class="icon icon-set"></i>
                </div>
            </div>
            <div class="aui-with-bg">
                <div class="aui-palace clearfix">
                    <a href="javascript:;" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <span></span>
                        </div>
                        <div class="aui-palace-grid-text">
                            <h2></h2>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <span>个人操作</span>
                        </div>
                        <div class="aui-palace-grid-text">
                            <h2></h2>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-palace-grid">
                        <div class="aui-palace-grid-icon">
                            <span></span>
                        </div>
                        <div class="aui-palace-grid-text">
                            <h2></h2>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <div class="aui-icon-box">
            <a class="aui-flex-box" href="修改个人密码.jsp?name=${param.email}">
                <div class="aui-flex-box-hd">
                    <img src="../image/icon-item-01.png" alt="">
                </div>
                <div class="aui-flex-box-bd">修改个人密码
                </div>
                <div class="aui-flex-box-fr"></div>
            </a>
            <a class="aui-flex-box" href="完善信息.jsp?name=${param.email}">
                <div class="aui-flex-box-hd">
                    <img src="../image/icon-item-04.png" alt="">
                </div>

                <div class="aui-flex-box-bd">完善个人信息
                </div>
                <div class="aui-flex-box-fr"></div>
            </a>

            <a class="aui-flex-box" href="个人信息.jsp?name=${param.email}">
                <div class="aui-flex-box-hd">
                    <img src="../image/icon-item-04.png" alt="">
                </div>
                <div class="aui-flex-box-bd">个人信息
                </div>
                <div class="aui-flex-box-fr"></div>
            </a>
            <a class="aui-flex-box" href="主界面.jsp">
                <div class="aui-flex-box-hd">
                    <img src="../image/icon-item-03.png" alt="">
                </div>
                <div class="aui-flex-box-bd">退出登录
                </div>
                <div class="aui-flex-box-fr"></div>
            </a>
        </div>
    </section>
    <footer class="aui-footer aui-footer-fixed">
        <form action="主界面.jsp" class="aui-tabBar-item">
			<span class="aui-tabBar-item-icon">
				<i class="icon icon-home"></i>
			</span>
            <input type="submit" value="首页">
        </form>


        <a href="User.jsp" class="aui-tabBar-item aui-tabBar-item-active">
			<span class="aui-tabBar-item-icon">
				<i class="icon icon-me"></i>
			</span>
            <span class="aui-tabBar-item-text">个人中心</span>
        </a>
    </footer>
</section>
</body>
</html>
