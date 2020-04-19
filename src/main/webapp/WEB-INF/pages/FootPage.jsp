<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-18
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../../css/FootPageStyle.css"/>
</head>
<body>
<div class="site-footer">

    <div class="footer-related">

        <div class="footer-article w1100">
            <dl class="contact clearfix">
                <dt class="fl">
                    <i class="iconfont"></i>
                </dt>
                <dd class="fl">
                    <p class="text">售前咨询热线</p>
                    <p class="tel">400-xxx-x000</p>
                    <a href="#" >在线咨询</a>
                </dd>
            </dl>

            <dl class="col-article">
                <dt>全站VIP</dt>

                <dd>
                    <a  href="#">购买</a>
                </dd>

                <dd>
                    <a  href="#">激活</a>
                </dd>

                <dd>
                    <a  href="#">VIP介绍</a>
                </dd>
            </dl>

            <dl class="col-article">
                <dt>常见问题</dt>

                <dd>
                    <a  href="#">权限问题</a>
                </dd>

                <dd>
                    <a  href="#">密码问题</a>
                </dd>

                <dd>
                    <a  href="#">注册问题</a>
                </dd>

                <dd>
                    <a  href="#">支付问题</a>
                </dd>
            </dl>

            <dl class="col-article">
                <dt>帮助中心</dt>

                <dd>
                    <a  href="#">产品使用</a>
                </dd>

                <dd>
                    <a  href="#">产品购买</a>
                </dd>

                <dd>
                    <a  href="#">产品资源</a>
                </dd>

                <dd>
                    <a  href="#">意见反馈</a>
                </dd>
            </dl>

            <!--关于我们-->
            <dl class="col-article">
                <dt>关于我们</dt>

                <dd>
                    <a href="#">平台介绍</a>
                </dd>

                <dd>
                    <a href="#">服务条款</a>
                </dd>
            </dl>
            <!--关注商之云-->
            <dl class="wx">
                <dt>关注我们</dt>

                <dd>
                    <img src="../../img/个人二维码.jpg">
                </dd>

            </dl>
        </div>

        <!--<div class="footer-links w1100">-->
        <!--<p>友情链接：</p>-->
        <!--<div class="clearfix">-->
        <!--&lt;!&ndash; 友情链接循环开始 &ndash;&gt;-->

        <!--<a href="#">站点列表</a>-->

        <!--<a href="#">云商城</a>-->

        <!--<a href="#">云产品库</a>-->

        <!--<a href="#">收银狗</a>-->

        <!--<a href="#">神码收银</a>-->

        <!--<a href="#">云物流</a>-->

        <!--<a href="#">云ERP</a>-->

        <!--<a href="#">生鲜电商</a>-->

        <!--<a href="#">农村电商</a>-->

        <!--<a href="#">母婴电商</a>-->

        <!--<a href="#">电商学院</a>-->

        <!--<a href="#">shop</a>-->

        <!--<a href="#">云电脑</a>-->

        <!--<a href="#">106短信平台</a>-->

        <!--<a href="#">网站收录</a>-->

        <!--<a href="#">分类目录</a>-->

        <!--&lt;!&ndash; 友情链接循环结束 &ndash;&gt;-->
        <!--</div>-->
        <!--</div>-->

        <div class="footer-info w1100">
            <div class="info-text w1100">
                <p class="company-info">浙江科技学院</p>
                <p class="qualified">
                </p>
            </div>
        </div>

    </div>
</div>

<!--手机验证消息-->
<div class="validInfo"></div>
<!-- 底部 _start-->

<script src="statics/js/jquery-1.11.0.js" type="text/javascript"></script>

<script type="text/javascript">
    // 手机号注册
    var reg = /^1[34578]\d{9}$/;
    $('body').on('click', '#jump', function() {
        var mobile = $('.register-phone').val();
        if(!reg.test($.trim(mobile))) {
            $('.validInfo').show().text("请正确填写你的手机号");
            $("#contact_mobile").focus();
            setTimeout(function() {
                $('.validInfo').hide()
            }, 2500)
            return;
        }
    });
</script>

</body>

</html>
