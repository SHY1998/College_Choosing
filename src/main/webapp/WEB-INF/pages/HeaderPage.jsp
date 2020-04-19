<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-18
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>精准高考</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <script src="../../js/jquery-3.4.1.js"></script>
    <script src="../../js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=device-width,initial-scale = 1,shrink-to-fit=no">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light ">
    <div class="container" style="height: 40px;">
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-sm-between" id="navbarNav">
            <span  class="navbar-brand" style="margin-top: 0px"><img src="../../img/电话.png" alt="" width="30" height="30" class=" align-top" style="vertical-align: top">全国客服热线:123-456-7890</span>
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><img src="../../img/连接.png" alt="" width="30" height="30" class="d-inline-block ">微信小程序</a>
                    <div class="dropdown-menu">
                        <div>
                            <a href="#" class="dropdown-item"><img src="../../img/个人二维码.jpg" alt="" width="100" height="100" class="align-content-center"></a>
                        </div>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><img src="../../img/微信.png" alt="" width="30" height="30" class="d-inline-block ">微信公众号</a>
                    <div class="dropdown-menu">
                        <div>
                            <a href="#" class="dropdown-item"><img src="../../img/个人二维码.jpg" alt="" width="100" height="100" class="align-content-center"></a>
                        </div>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><img src="../../img/手机.png" alt="" width="30" height="30" class="d-inline-block ">手机app</a>
                    <div class="dropdown-menu">
                        <div>
                            <a href="#" class="dropdown-item"><img src="../../img/个人二维码.jpg" alt="" width="100" height="100" class="align-content-center"></a>
                        </div>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <button class="nav-link " onclick="login()">登录</button>
                </li>
                <li class="nav-item dropdown">
                    <button class="nav-link ">注册</button>
                </li>

            </ul>
        </div>
    </div>


</nav>
<div class="bg-white " style="height: 100px">
    <div class="container form-inline justify-content-sm-between">
        <a class="align-content-center"><img src="../../img/商标.png" style="width: auto;height: 40px; margin-top: 20px"></a>
        <div style="margin-top: 20px" >
            <button class="btn btn-outline-primary disabled" >河北</button>
            <a href="#">切换城市</a>
        </div>
        <form action="" class="form-inline my-2 my-md-0">
            <div style="margin-top: 20px">
                <input type="text" class="form-control mr-sm-2" placeholder="请输入关键字" >
                <button class="btn btn-outline-success my-2 my-md-0" >搜索</button>
            </div>
        </form>
    </div>
</div>
<div class="container">
    <ul class="nav nav-tabs nav-fill">
        <li class="nav-item">
            <a href="" class="nav-link active">首页</a>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link ">查学校</a>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link ">查专业</a>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link ">院校分数线</a>
        </li>
        <li class="nav-item">
            <a href="" class="nav-link ">报考热度排名</a>
        </li>
    </ul>
</div>
</body>
<script>
    function login() {
        // alert("123");
        window.location.href="${pageContext.request.contextPath}/user/login";
    }
</script>
</html>
