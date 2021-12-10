<%--
  Created by IntelliJ IDEA.
  User: LH
  Date: 2021-12-6 0006
  Time: 09:45
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
    <title>结算</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="css/base.css" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/common.css" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/css/common.css" />
    <script src="js/jquery-1.8.3.min.js" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.js" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/js/jquery.SuperSlide.2.1.js"></script>
</head>

<body>
<!--header star-->
<div class="header clearfix">
    <div class="top clearfix">
        <div class="topctent clearfix">
            <div class="left clearfix fl">
                公告：您好，欢迎登录北京XXX文化发展有限公司
            </div>
            <div class="right clearfix fr">
                <div class="zuo clearfix fl">
                    <ul class="clearfix fl">
                        <li>
                            <span class="fl">您好，请</span>
                            <a href="sign.jsp" class="fl">登录</a>
                        </li>
                        <li>
                            <a href="register.jsp" >
                                免费注册
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="shopcar-btn clearfix fl">
                    <a href="shopping.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/shopping.html" class="box-s">
                        购物车（0）
                    </a>
                </div>
                <div class="fenxiang clearfix fl">
                    <span class="fl">分享到：</span>
                    <ul class="clearfix fl">
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/sina.png" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/img/sina.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/qq.png" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/img/qq.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/wechat.png" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/img/wechat.png" /></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom clearfix">
        <div class="logo clearfix">
            <a href="index.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/index.html"></a>
        </div>
        <div class="search clearfix fr ra5">
            <input type="text" class="fl" name="name" id="name" value="" placeholder="请输入您要搜索的内容" />
            <input type="button" name="" id="sreach" value="搜索" class="fl box-s" />
        </div>
    </div>
</div>
<!--header end-->

<!--navbar star-->
<div class="navbar clearfix">
    <div class="content clearfix">
        <ul>
            <li class="cur">
                <a href="index.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/index.html">首页</a>
            </li>
            <li>
                <a href="special.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/special.html">专场</a>
            </li>
            <li>
                <a href="mall.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/mall.html">商城</a>
            </li>
        </ul>
    </div>
</div>
<!--navbar end-->

<!--Main-wrap-->
<div class="main-wrap graybg pt40 pb40">
    <div class="js-box wrapper white-box">
        <!--收货人信息-->
        <div class="consignee-info">
            <div class="title line-bot"><span class="fs18 pl20 ml40 darkgray">收货人地址</span></div>
            <div class="consignee-box clearfix">
                <div class="consignee-block check-box check_on  radius5">
                    <em></em>
                    <p class="fs14 lh40 clearfix">
                        <span class="fl darkgray"><i class="iconfont fs24">&#xe60e;</i>飞天猪</span>
                        <a href="javascript:" class="fr green edit"><i class="iconfont fs24 green">&#xe60f;</i>编辑</a>
                    </p>
                    <p class="fs14 darkgray lh40"><i class="iconfont fs24">&#xe60c;</i>18056000000
                    </p>
                    <p class="fs14 darkgray lh30 clearfix">
                        <i class="fl iconfont fs24">&#xe610;</i><span class="fl address">合肥市蜀山区长江西路100号拓基城市广场  金座A2002</span>
                    </p>
                </div>
                <div class="consignee-block check-box radius5">
                    <em></em>
                    <p class="fs14 lh40 clearfix">
                        <span class="fl darkgray"><i class="iconfont fs24">&#xe60e;</i>飞天猪</span>
                        <a href="javascript:" class="fr green edit"><i class="iconfont fs24 green">&#xe60f;</i>编辑</a>
                    </p>
                    <p class="fs14 darkgray lh40"><i class="iconfont fs24">&#xe60c;</i>18056000000
                    </p>
                    <p class="fs14 darkgray lh30 clearfix">
                        <i class="fl iconfont fs24">&#xe610;</i><span class="fl address">合肥市蜀山区长江西路100号拓基城市广场  金座A2002</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="goodssale">
            <div class="title line-bot"><span class="fs18 pl20 ml40 darkgray">商品信息</span></div>
            <table class="table_1 table_goods" border="0" cellpadding="0" cellspacing="0">
                <tr class="line-bot">
                    <td width="599">
                        <p class="o-goods-info clearfix  ">
                            <a href="#" class="fl"><span><img src="img/2.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/2.jpg" alt=""></span></a>
                            <span class="fl tit mt10">墙角数枝梅，凌寒独自开</span>
                        </p>
                    </td>
                    <td width="148">29.90元*1</td>
                    <td width="128">有货</td>
                    <td width="177"><span class="orange">29.90元</span></td>
                </tr>
                <tr class="line-bot">
                    <td>
                        <p class="o-goods-info clearfix  ">
                            <a href="#" class="fl"><span><img src="img/2.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/2.jpg" alt=""></span></a>
                            <span class="fl tit mt10">墙角数枝梅，凌寒独自开</span>
                        </p>
                    </td>
                    <td>29.90元*1</td>
                    <td>有货</td>
                    <td><span class="orange">29.90元</span></td>
                </tr>
            </table>
            <div class="sale-info pt10 pb10 clearfix">
                <div class="fr total-amount mb30">
                    <p class="mt20 fr">
                        <span class="fs16 darkgray clearfix">商品总价：<em class="fr orange fs24 f-arial">¥ 999.00</em></span>
                    </p>
                    <p class="mt10 fr">
                        <a href="fukuan.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/fukuan.html" class="fr orange-but fs20 radius3">去结算</a>
                    </p>
                </div>
            </div>
        </div>
        <!--/end-->

    </div>
</div>
<!--/end-->

<!--footer star-->
<div class="footer clearfix">
    <div class="content clearfix">
        <div class="top clearfix">
            <div class="list clearfix fl box-s">
                <div class="part icon1 box-s">
                    <h3>专业</h3>
                    <p>拥有资深艺术顾问和先进交易平台，安全物流，快捷支付。</p>
                </div>
            </div>
            <div class="list clearfix fl box-s">
                <div class="part icon2 box-s">
                    <h3>保真</h3>
                    <p>阵容强大的艺术评鉴团，确保平台上的藏品货真价实。</p>
                </div>
            </div>
            <div class="list clearfix fl box-s">
                <div class="part icon3 box-s">
                    <h3>保值</h3>
                    <p>为您精选具备艺术价值的作品，助您的资产保值、增值。</p>
                </div>
            </div>
        </div>
        <div class="bottom clearfix">
            <div class="left clearfix fl">
                <div class="list clearfix">
                    <div class="shang clearfix">
                        <p>新手指南</p>
                        <span></span>
                    </div>
                    <div class="xia clearfix">
                        <ul>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/scgmlc.html">商城购买流程</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/cjwt.html">常见问题</a></li>
                        </ul>
                    </div>
                </div>
                <div class="list clearfix">
                    <div class="shang clearfix">
                        <p>账户管理</p>
                        <span></span>
                    </div>
                    <div class="xia clearfix">
                        <ul>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/zhcz.html">账户充值</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/zhtx.html">账户提现</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/zffs.html">支付方式</a></li>
                        </ul>
                    </div>
                </div>
                <div class="list clearfix">
                    <div class="shang clearfix">
                        <p>服务合作</p>
                        <span></span>
                    </div>
                    <div class="xia clearfix">
                        <ul>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/friend-link.html">友情链接</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/ysjrz.html">艺术家入驻</a></li>
                        </ul>
                    </div>
                </div>
                <div class="list clearfix">
                    <div class="shang clearfix">
                        <p>关于我们</p>
                        <span></span>
                    </div>
                    <div class="xia clearfix">
                        <ul>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/gsjj.html">公司简介</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/contact.html">联系我们</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/jrwm.html">加入我们</a></li>
                        </ul>
                    </div>
                </div>
                <div class="list clearfix">
                    <div class="shang clearfix">
                        <p>售后服务</p>
                        <span></span>
                    </div>
                    <div class="xia clearfix">
                        <ul>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/wlsm.html">物流说明</a></li>
                            <li><a href="" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/mzsm.html">免责声明</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="middle clearfix fl">
                <ul>
                    <li><img src="img/ewm.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/ewm.jpg"/></li>
                    <li><img src="img/ewm.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/ewm.jpg"/></li>
                </ul>
            </div>
            <div class="right clearfix fr">
                <p class="bt">免费咨询热线：</p>
                <p class="tel">400-000-0000</p>
                <p class="fu-bt">(周一到周五8:00-22:00)</p>
            </div>
        </div>
    </div>
    <div class="banquan clearfix ta-center">
        Copyright © 2020 XXX文化(chunlingwenhua). All Rights Reserved.
    </div>
</div>
<!--footer end-->

<div id="mask">
    <div class="alert-box radius8">
        <h3 class="fs20">添加收货地址 <span class="close"></span></h3>
        <div class="address-form box-s">
            <form action="">
                <p class="mb20 clearfix">
                    <label class="fl">收货人：</label>
                    <input type="text" placeholder="姓名" value="" placeholder="姓名" class="fl ml5">
                    <em class="fl red lh40 ml10">*</em>
                </p>
                <p class="mb20 clearfix">
                    <label class="fl">手机：</label>
                    <input type="text" placeholder="手机" value="" placeholder="手机" class="fl ml5">
                    <em class="fl red lh40 ml10">*</em>
                </p>
                <p class="mb20 clearfix">
                    <label class="fl">地址：</label>
                    <select name="" id="" class="fl ml5">
                        <option value="0">省份/直辖市</option>
                        <option value="1">安徽省</option>
                    </select>
                    <select name="" id="" class="fl ml5">
                        <option value="0">城市</option>
                        <option value="1">合肥市</option>
                    </select>
                    <select name="" id="" class="fl ml5">
                        <option value="0">区县</option>
                        <option value="1">经开区</option>
                    </select>
                </p>
                <p class="mb20 clearfix">
                    <label class="fl"></label>
                    <input type="text" value="" placeholder="详细地址" class="fl ml5">
                    <em class="fl red lh40 ml10">*</em>
                </p>
                <p class="mb20 clearfix">
                    <label class="fl">邮政编码：</label>
                    <input type="text" placeholder="邮政编码" value="" class="fl ml5">
                </p>
                <p class="mb20 clearfix">
                    <label class="fl"></label>
                    <input type="button" value="保存" class="fl orange-but radius3 ml5">
                    <input type="button" value="取消" class="fl gray-but radius3 ml10">
                </p>
            </form>
        </div>
    </div>
</div>
</body>
<script src="js/other.js" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/js/other.js" type="text/javascript" ></script>

</html>
