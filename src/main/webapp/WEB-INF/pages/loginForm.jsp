<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-19
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<link rel="stylesheet" href="../../css/loginCss.css">
<meta charset="UTF-8">
<title>精准高考</title>
<script src="../../js/jquery-3.4.1.js"></script>
<head>
    <title>Title</title>
</head>
<body>
<div class="minbody">
    <div class="content">
        <div class="form sign-in">
                <h2>欢迎回来</h2>
                <label>
                    <span>用户名</span>
                    <input type="text" id="Login_name" />
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" id="Login_password" />
                </label>
                <!--<p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>-->
                <button type="button" class="submit" onclick="loginTest()">登 录</button>
        </div>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>
            <div class="form sign-up">
                <h2>立即注册</h2>
                <label>
                    <span>用户名</span>
                    <input type="text" />
                </label>
                <label>
                    <span>邮箱</span>
                    <input type="email" />
                </label>
                <label>
                    <span>手机</span>
                    <input type="email" />
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" />
                </label>
                <button type="submit" class="submit">注 册</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../../js/script.js"></script>
<script>
    function loginTest() {
        var username = $("#Login_name").val();
        var password = $("#Login_password").val();
        if (username == '' || password == '')
        {
            if (username == '')
            {
                alert("用户名不能为空");
            }
            else if(password == '')
            {
                alert("密码不能为空")
            }
        }
        if(username!=''&&password!='')
        {
            $.ajax(
                {
                    type:'post',
                    url:'${pageContext.request.contextPath}/loginTest',
                    dataType:'json',
                    data:{"username":username,"password":password},
                    success:function (BackCode) {
                        if(BackCode == 0)
                        {
                            alert("用户名不存在");
                        }
                        else if(BackCode == 1)
                        {
                            alert("密码错误");
                        }
                        else if(BackCode == 2)
                        {
                            window.location.href="${pageContext.request.contextPath}/";
                        }
                    }
                }
            );
        }
    }
</script>

</html>
