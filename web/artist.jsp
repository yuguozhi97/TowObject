<%--
  Created by IntelliJ IDEA.
  User: Gz
  Date: 2021/12/10
  Time: 10:08
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
    <title>艺术家</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/page.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.js"></script>
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
                            <a href="sign.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/sign.html" class="fl">登录</a>
                        </li>
                        <li>
                            <a href="register.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/register.html">
                                免费注册
                            </a>
                        </li>
                        <li>
                            <a href="settled.jsp" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/settled.html">
                                艺术家入驻
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
                        <li><a href="#"><img src="${pageContext.request.contextPath}/img/sina.png"/></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/img/qq.png"/></a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/img/wechat.png"/></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom clearfix">
        <div class="logo clearfix">
            <a href="index.jsp"></a>
        </div>
        <div class="search clearfix fr ra5">
            <input type="text" class="fl" name="" id="" value="" placeholder="请输入您要搜索的内容" />
            <input type="button" name="" id="" value="搜索" class="fl box-s" />
        </div>
    </div>
</div>
<!--header end-->

<!--navbar star-->
<div class="navbar clearfix">
    <div class="content clearfix">
        <ul>
            <li><a href="index.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/index.html">首页</a></li>
            <li><a href="special.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/special.html">专场</a></li>
            <li><a href="mall.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/mall.html">商城</a></li>
            <li class="cur"><a href="artist.html" >艺术家</a></li>
        </ul>
    </div>
</div>
<!--navbar end-->

<!--mall star-->
<div class="mall clearfix">
    <!--sorts star-->
    <div class="sorts clearfix">
        <div class="content clearfix">
            <div class="top clearfix box-s">
                您的位置：艺术家
            </div>
            <div class="listed clearfix box-s">
                <div class="list clearfix fl">
                    <p class="bt fl">
                        分类：
                    </p>
                    <div class="right clearfix fl">
                        <ul>
                            <li class="cur">全部</li>
                            <li class="">书画</li>
                            <li class="">油画</li>
                            <li class="">版画</li>
                            <li class="">雕塑</li>
                        </ul>
                        <a href="settled.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/settled.html" class="shenqin fr">申请签约入驻</a>
                    </div>
                </div>
                <div class="ywlist clearfix fl" id="float">
                    <div class="ywctent clearfix">
                        <ul class="clearfix">
                            <li class="cur">A</li>
                            <li>B</li>
                            <li>C</li>
                            <li>D</li>
                            <li>E</li>
                            <li>F</li>
                            <li>G</li>
                            <li>H</li>
                            <li>I</li>
                            <li>J</li>
                            <li>K</li>
                            <li>L</li>
                            <li>M</li>
                            <li>N</li>
                            <li>O</li>
                            <li>P</li>
                            <li>Q</li>
                            <li>R</li>
                            <li>S</li>
                            <li>T</li>
                            <li>U</li>
                            <li>V</li>
                            <li>W</li>
                            <li>X</li>
                            <li>Y</li>
                            <li class="last">Z</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--sorts end-->

    <!--artist star-->
    <div class="artist clearfix">
        <div class="content clearfix">
            <div class="artist-top clearfix">
                <span>全部艺术家</span>
            </div>
            <div class="artist-bottom clearfix">
                <div class="list clearfix fl">
                    <div class="left clearfix fl box-s">
                        <div class="tu clearfix">
                            <img src="${pageContext.request.contextPath}/img/7.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/7.jpg"/>
                            <span></span>
                        </div>
                    </div>
                    <div class="right clearfix fl">
                        <span class="tit">艺术家：孙瑾晨</span>
                        <div class="bottom clearfix box-s fl over4">
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定成
                            就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自己
                            职业之外从事艺术创作的人。是一个原于自然，发于心灵的艺术作品创作者。
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定
                            成就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自
                            己职业之外从事......
                        </div>
                    </div>
                    <a href="artist-detail.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/artist-detail.html" class="ck-btn ra3 transition">
                        查看详情>>
                    </a>
                </div>
                <div class="list clearfix fl">
                    <div class="left clearfix fl box-s">
                        <div class="tu clearfix">
                            <img src="${pageContext.request.contextPath}/img/7.jpg" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/upload/7.jpg"/>
                            <span></span>
                        </div>
                    </div>
                    <div class="right clearfix fl">
                        <span class="tit">艺术家：孙瑾晨</span>
                        <div class="bottom clearfix box-s fl over4">
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定成
                            就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自己
                            职业之外从事艺术创作的人。是一个原于自然，发于心灵的艺术作品创作者。
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定
                            成就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自
                            己职业之外从事......
                        </div>
                    </div>
                    <a href="artist-detail.html" class="ck-btn ra3 transition">
                        查看详情>>
                    </a>
                </div>
                <div class="list clearfix fl">
                    <div class="left clearfix fl box-s">
                        <div class="tu clearfix">
                            <img src="${pageContext.request.contextPath}/img/7.jpg"/>
                            <span></span>
                        </div>
                    </div>
                    <div class="right clearfix fl">
                        <span class="tit">艺术家：孙瑾晨</span>
                        <div class="bottom clearfix box-s fl over4">
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定成
                            就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自己
                            职业之外从事艺术创作的人。是一个原于自然，发于心灵的艺术作品创作者。
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定
                            成就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自
                            己职业之外从事......
                        </div>
                    </div>
                    <a href="artist-detail.html" class="ck-btn ra3 transition">
                        查看详情>>
                    </a>
                </div>
                <div class="list clearfix fl">
                    <div class="left clearfix fl box-s">
                        <div class="tu clearfix">
                            <img src="${pageContext.request.contextPath}/img/7.jpg"/>
                            <span></span>
                        </div>
                    </div>
                    <div class="right clearfix fl">
                        <span class="tit">艺术家：孙瑾晨</span>
                        <div class="bottom clearfix box-s fl over4">
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定成
                            就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自己
                            职业之外从事艺术创作的人。是一个原于自然，发于心灵的艺术作品创作者。
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定
                            成就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自
                            己职业之外从事......
                        </div>
                    </div>
                    <a href="artist-detail.html" class="ck-btn ra3 transition">
                        查看详情>>
                    </a>
                </div>
                <div class="list clearfix fl">
                    <div class="left clearfix fl box-s">
                        <div class="tu clearfix">
                            <img src="${pageContext.request.contextPath}/img/7.jpg"/>
                            <span></span>
                        </div>
                    </div>
                    <div class="right clearfix fl">
                        <span class="tit">艺术家：孙瑾晨</span>
                        <div class="bottom clearfix box-s fl over4">
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定成
                            就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自己
                            职业之外从事艺术创作的人。是一个原于自然，发于心灵的艺术作品创作者。
                            艺术家（英文叫artist）是指具有较高的审美能力和娴熟的创造技巧并从事艺术创作劳动而有一定
                            成就的艺术工作者；既包括在艺术领域，影视领域里以艺术创作作为自己专门职业的人，也包括在自
                            己职业之外从事......
                        </div>
                    </div>
                    <a href="artist-detail.html" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/artist-detail.html" class="ck-btn ra3 transition">
                        查看详情>>
                    </a>
                </div>
            </div>
            <div class="page clearfix ta-right fl mt25">
                <a href="#" class="pre box-s">上一页</a>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <span>...</span>
                <a href="#" class="next box-s">下一页</a>
                <span class="ml10">到第</span>
                <input type="" name="" id="" value="" />
                <span>页</span>
                <input type="submit" name="" id="" value="确定" />
            </div>
        </div>
    </div>
    <!--artist end-->

</div>
<!--mall end-->

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
                            <li><a href="scgmlc.html">商城购买流程</a></li>
                            <li><a href="cjwt.html">常见问题</a></li>
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
                            <li><a href="zhcz.html">账户充值</a></li>
                            <li><a href="zhtx.html">账户提现</a></li>
                            <li><a href="zffs.html">支付方式</a></li>
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
                            <li><a href="friend-link.html">友情链接</a></li>
                            <li><a href="ysjrz.html">艺术家入驻</a></li>
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
                            <li><a href="gsjj.html">公司简介</a></li>
                            <li><a href="contact.html">联系我们</a></li>
                            <li><a href="jrwm.html">加入我们</a></li>
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
                            <li><a href="wlsm.html">物流说明</a></li>
                            <li><a href="mzsm.html">免责声明</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="middle clearfix fl">
                <ul>
                    <li><img src="${pageContext.request.contextPath}/img/ewm.jpg"/></li>
                    <li><img src="${pageContext.request.contextPath}/img/ewm.jpg"/></li>
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
</body>
<script type="text/javascript">
    $('.listed .list ul li,.listed .ywlist ul li').each(function() {
        $(this).click(function() {
            $(this).siblings("li").removeClass("cur");
            $(this).addClass("cur");
        });
    });
</script>
<script type="text/javascript">
    window.onload=
        function(){
            var oDiv=document.getElementById("float");
            var H=0;
            var Y=oDiv;
            while(Y){H+=Y.offsetTop;Y=Y.offsetParent};
            window.onscroll=function()
            {
                var s=document.body.scrollTop||document.documentElement.scrollTop;
                if(s>H){oDiv.className="ywlist ywlisttwo";}
                else{oDiv.className="ywlist";}
            };
        }
</script>

<script src="${pageContext.request.contextPath}/js/other.js" tppabs="http://demo.mxyhn.xyz:8020/cssthemes6/1.27ZF11/js/other.js" type="text/javascript" ></script>
</body>
</html>
