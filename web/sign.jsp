<%--
  Created by IntelliJ IDEA.
  User: Gz
  Date: 2021/12/6
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset='utf-8'>
    <meta name="author" content="order by dede58.com"/>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>登录</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.js" ></script>


</head>

<body class="sign-bg">
<div class="sign clearfix">
    <div class="top clearfix">
        <a href="${pageContext.request.contextPath}index.html" class="fl fanhui">返回首页</a>
        <p class="fr">
            还没有商城账号？
            <a href="register.jsp" class="zhuce ra3">
                注册
            </a>
        </p>
    </div>
    <div class="bottom clearfix box-s ra10">
        <div class="sign-logo clearfix">
            <img src="${pageContext.request.contextPath}/img/yuanlogo.png"/>
        </div>
        <div class="content clearfix">
            <form action="" type="post" id="frm">
            <ul>
                <li>
                    <span class="fl"></span>
                    <input type="text" name="name" placeholder="用户名/手机号码" class="fl shuru" />
                </li>
                <li>
                    <span class="fl mima"></span>
                    <input type="password" name="pwd" placeholder="密码" class="fl shuru" />
                </li>
                <li style="color: red;text-align: center" id="errll">


                </li>
            </ul>
            <a href="#" class="sign-btn ra5" id="signbtn">立即登录</a>
            </form>
            <script>
                $(function () {
                    $('#signbtn').click(function () {
                        $.ajax({
                            url:"user?method=sign",
                            type:'post',
                            data:$('#frm').serialize(),
                            success:function (data) {
                                if(data=='yes'){
                                    // 有用户准备登录
                                    $(location).attr('href','index.jsp');
                                }else if(data=='no'){
                                    $('#errll').html("用户名或者密码错误！")
                                }
                            }
                        })
                    })
                })
            </script>
        </div>
    </div>
    <div class="xia clearfix">
        <p>Copyright © 2020 XXX文化(chunlingwenhua). All Rights Reserved.</p>
    </div>
</div>
</body>
</html>
