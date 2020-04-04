<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-02
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<body>
<h2>学校</h2>
<div>
    <form method="get" action="${pageContext.request.contextPath}/test/page">
        <input type="text" name="Province">
        <button type="submit">查询</button>
    </form>
</div>
<button type="button" id="btn">北京</button>
<table frame="box" rules="all">
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>Money</td>
        <td>Money</td>
        <td>高校对比</td>

    </tr>

    <c:if test="${list!=null||fn:length(list)!=0}">
        <c:forEach items="${list}" var = "school" begin="0" end="${fn:length(list)}">
            <tr>
                <td>${school.school_name}</td>
                <%--<td>${school.Province.province_name}</td>--%>
                <td>${school.level_name}</td>
                <td>${school.heat_rank}</td>
                <td>高校对比</td>


            </tr>
        </c:forEach>
    </c:if>
</table>
<table id="thisTable">
<tr>
    <td>id</td>
    <td>Name</td>
    <td>Money</td>
    <td>Money</td>
    <td>高校对比</td>

</tr>
<tbody id="contant">
</tbody>
</table>
<table>
    <tr itemid="${page}">
        <form action="${pageContext.request.contextPath}/test/page">
        <td><input type="hidden" name="page" value="1"></td>
        <td><input type="submit" value="首页"></td>
        </form>

        <form action="${pageContext.request.contextPath}/test/page">
            <td><input type="hidden" name="page" value="${page.prefPage}"></td>
            <td><input type="submit" value="上一页"></td>
        </form>
        <td>当前：第${page.currentPage}页<--></td>
        <td>共：${page.totalPage}页</td>

        <form method="GET" action="${pageContext.request.contextPath}/test/page">
            <td><input type="hidden" name="page" value="${page.nextPage}"></td>
            <td><input type="submit" value="下一页"></td>
        </form>

        <form method="GET" action="${pageContext.request.contextPath}/test/page">
            <td><input type="hidden" name="page" value="${page.totalPage}"></td>
            <td><input type="submit" value="尾页"></td>
        </form>
    </tr>
</table>
<form method="GET" action="${pageContext.request.contextPath}/test/page">
    <table>
        <tr>
            <td>跳转到第:<input type="text" name="page" size="5"/>页</td>
            <td><input type="submit" value="确定"></td>
        </tr>
    </table>
</form>
</body>
<script>

    <%--document.getElementById("province_submit").href = "${pageContext.request.contextPath}/user/page?"+Province;--%>
    <%--function setUrl() {--%>
        <%--var province = $('#Province').val();--%>
        <%--var href = "${pageContext.request.contextPath}/user/page?"+province;--%>
        <%--// return href;--%>
        <%--alert(href)--%>
    <%--}--%>

    $(function () {
        $("#btn").click(function () {
            alert("前面")
            // $.ajax("list",{"page":"1","province":"北京"},function (data) {
            //     alert("chengong")
            //     // console.log(data);
            //     // var html = "";
            //     // for (var i =0;i<data.length;i++)
            //     // {
            //     //     html+="<tr>"+
            //     //         "<td>"+data[i].school_name+"</td>"+
            //     //         "<td>"+data[i].school_name+"</td>"+
            //     //         "<td>"+data[i].school_name+"</td>"+"<tr>"
            //     // }
            //     // $("#contant").html(html);
            //     alert(data.schoolList);
            //
            // })
            $.ajax({
                url:"${pageContext.request.contextPath}/test/list",
                data:{"page":1,"province":"安徽"},
                type:"GET",
                success:function (data) {
                    alert("chengong")
                    alert(data.schoolList[0].school_name)
                        console.log(data);
                        var list = data.schoolList;
                        var table = $("#thisTable");
                        var tr = ""
                        for ( i =0;i<list.length;i++)
                        {
                            var schools = list[i];
                            tr+="<tr>"+
                                "<td>"+schools.school_name+"</td>"+
                                "<td>"+schools.school_name+"</td>"+
                                "<td>"+schools.school_name+"</td>"+"<tr>"
                        }
                        alert(tr);
                        table.append(tr);

                }
            })
        })
    })

</script>
</html>
