<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-01
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="button" id="btn" value="123">
<table>
    <tr>
        <td>姓名</td>
        <td>姓名</td>
        <td>姓名</td>
    </tr>
    <tbody id="content"></tbody>
</table>
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
<script>
    $(function () {
        $("#btn").click(function () {
            $.post("${pageContext.request.contextPath}/text/list",function (data) {
                console.log(data);
                var html ="";
                for(var i=0;i<data.length;i++)
                {
                    data[i].
                }
            })
        })
    })
</script>
</body>
</html>
