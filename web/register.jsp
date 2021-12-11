<%--
  Created by IntelliJ IDEA.
  User: Gz
  Date: 2021/12/5
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset='utf-8'>
    <meta name="author" content="order by dede58.com"/>
<%--    <meta http-equiv="Cache-Control" content="no-siteapp" />--%>
    <title>注册</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<%--    <meta http-equiv="Cache-Control" content="no-siteapp">--%>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css"  />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.js" ></script>

</head>
<body class="sign-bg">
<div class="sign clearfix">
    <div class="top clearfix">
        <a href="index.jsp" class="fl fanhui">返回首页</a>
        <p class="fr">
            已有商城账号？
            <a href="sign.jsp">
                登录
            </a>
        </p>
    </div>
    <div class="bottom clearfix box-s ra10">
        <div class="sign-logo clearfix">
            <img src="${pageContext.request.contextPath}/img/yuanlogo.png" />
        </div>
        <div class="content clearfix" id="app">
            <form id="frm">
            <ul>
                <li>
                    <span class="fl"></span>
                    <input type="text" name="name" placeholder="用户名/手机号码" class="fl shuru" v-focus/>
                </li>
<%--                <li class="yanzhengma">--%>
<%--                    <span class="fl hudun"></span>--%>
<%--                    <input type="text" name="" id="yzm" value="" placeholder="请输入验证码" class="fl shuru yzma" />--%>
<%--                    <samp class="fr"><img src="${pageContext.request.contextPath}/img/yanzhengma.jpg" /></samp>--%>
<%--                </li>--%>
                <li class="yanzhengma">
                    <span class="fl hudun"></span>
                    <input type="text" name="email"  placeholder="请输入邮箱" class="fl shuru yzma" required/>
                    <samp class="fr" id="hq" style="background-color: #00FF00;border-radius: 12px">获取验证码</samp>
                </li>
                <li class="yanzhengma">
                    <span class="fl hudun"></span>
                    <input type="text" name="emialyzm" placeholder="请输入验证码" class="fl shuru yzma" required/>

                </li>
                <li>
                    <span class="fl mima"></span>
                    <input type="password" name="pwd"  placeholder="密码" class="fl shuru" required/>
                </li>
                <li>
                    <span class="fl mima"></span>
                    <input type="password" name="pwdAgin"  placeholder="请再次输入密码" class="fl shuru" required/>
                </li>
            </ul>
                <span><input type="checkbox" name="dir" value="-1" id="choce"></span><span>我已阅读并同意<a href="zcxy.html">《XXX艺术用户注册协议》</a></span>
                <button class="sign-btn zhuce-btn ra5" id="btn" disabled="disabled" style="background-color: gray;color: white" >注册</button>
            </form>
        </div>
    </div>
    <script>
        $(function () {

            // 阅读---注册按钮事件
            $('#choce').click(function () {
                var flag=$('#choce').prop('checked');
                if(flag){
                    $('#btn').css("background-color","red");
                    $('#btn').removeAttr("disabled");
                }else {
                    $('#btn').css("background-color","gray");
                    $('#btn').prop('disabled','disabled');
                }
            })

            //邮箱验证异步请求
            $('#hq').click(function () {
                $(this).css("background","gray");

                var mail=$("[name='email']").val();
                alert(mail);
                $.ajax({
                    url:"user",
                    type: 'post',
                    data:{'method':'yzyx','yzm':mail},
                    success:function (data) {
                        var va=data;
                        console.log(va)
                    }
                })
            })

            //注册事件
            $('#btn').click(function () {
                alert(11);
                $.ajax({
                    url:"user?method=register",
                    type:"post",
                    data:$('#frm').serialize(),
                    success:function (data) {

                    }

                });
            })

            //name失去焦点，后的ajax请求查看是否重名
            $("[name='name']").blur(function () {
                $.post("user",{"method":"judegName","name":$(this).val()},function (data) {
                    if(data=='不行'){
                        alert("用户名已被注册！")
                    }
                })
            })

            //邮箱数去焦点后，判断格式和控制
            $("[name='email']").blur(function () {
                $.post("user",{"method":"judegMail","mail":$(this).val()},function (data) {
                    if(data=='不能为空'||data=='错误格式'){
                        alert("邮箱格式填写错误")
                    }
                })
            })
        })
        // ---------------------------------------------------------------------------

    </script>

    <div class="xia clearfix">
        <p>Copyright © 2020 XXX文化(chunlingwenhua). All Rights Reserved.</p>
    </div>
</div>

</body>
</html>
