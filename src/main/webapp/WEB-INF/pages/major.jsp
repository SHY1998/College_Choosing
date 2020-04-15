<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-12
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>

<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<head>
    <title>Majors</title>
</head>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<body>
<div >
    <input name="ben" type="radio" value="" checked="checked">全部
    <input name="ben" type="radio" value="本科" >本科
    <input name="ben" type="radio" value="专科" >专科（高职)
</div>

<div >
    <input name="type" type="radio" value="" checked="checked">全部
    <input name="type" type="radio" value="哲学" >哲学
    <input name="type" type="radio" value="经济学" >经济学
    <input name="type" type="radio" value="法学" >法学
    <input name="type" type="radio" value="教育学">教育学
    <input name="type" type="radio" value="文学">文学
    <input name="type" type="radio" value="历史学" >历史学
    <input name="type" type="radio" value="理学" >理学
    <input name="type" type="radio" value="工学">工学
    <input name="type" type="radio" value="农学">农学
    <input name="type" type="radio" value="医学" >医学
    <input name="type" type="radio" value="管理学" >管理学
    <input name="type" type="radio" value="艺术学">艺术学
    <input name="type" type="radio" value="农林牧渔大类">农林牧渔大类
    <input name="type" type="radio" value="资源环境与安全大类">资源环境与安全大类
    <input name="type" type="radio" value="能源动力与材料大类">能源动力与材料大类
    <input name="type" type="radio" value="土木建筑大类">土木建筑大类
    <input name="type" type="radio" value="水利大类">水利大类
    <input name="type" type="radio" value="装备制造大类">装备制造大类
    <input name="type" type="radio" value="生物与化工大类">生物与化工大类
    <input name="type" type="radio" value="轻工纺织大类">轻工纺织大类
    <input name="type" type="radio" value="食品药品与粮食大类">食品药品与粮食大类
    <input name="type" type="radio" value="交通运输大类">交通运输大类
    <input name="type" type="radio" value="电子信息大类">电子信息大类
    <input name="type" type="radio" value="医药卫生大类">医药卫生大类
    <input name="type" type="radio" value="财经商贸大类">财经商贸大类
    <input name="type" type="radio" value="旅游大类">旅游大类
    <input name="type" type="radio" value="文化艺术大类">文化艺术大类
    <input name="type" type="radio" value="新闻传播大类">新闻传播大类
    <input name="type" type="radio" value="教育与体育大类">教育与体育大类
    <input name="type" type="radio" value="公安与司法大类">公安与司法大类
    <input name="type" type="radio" value="公共管理与服务大类">公共管理与服务大类




</div>

<table frame="box" rules="all">
    <tr>
        <td>专业名</td>
        <td>报考热度</td>
        <td>层次</td>
        <td>就业前景</td>
    </tr>
    <c:if test="${list!=null||fn:length(list)!=0}">
        <c:forEach items="${list}" var = "major" begin="0" end="${fn:length(list)}">
            <tr>
                <td>${fn:length(list)}</td>
                <td>${major.major_name}</td>
                <td>${major.major_heat}</td>
                <td>${major.ben}</td>
                <td><a href="https://gkcx.eol.cn/special/${major.major_id}">点击查看</a></td>


            </tr>
        </c:forEach>
    </c:if>
</table>

<table>
    <tr itemid="${page}">
        <form action="${pageContext.request.contextPath}/major/">
            <td><input type="hidden" name="page" value="1"></td>
            <td><input type="submit" value="首页"></td>
        </form>

        <form action="${pageContext.request.contextPath}/major/">
        <td><input type="hidden" name="page" value="${page.prefPage}"></td>
            <td><input type="submit" value="上一页"></td>
        </form>
        <td>当前：第${page.currentPage}页<--></td>
        <td>共：${page.totalPage}页</td>

        <form action="${pageContext.request.contextPath}/major/">
            <td><input type="hidden" name="page" value="${page.nextPage}"></td>
            <td><input type="submit" value="下一页"></td>
        </form>

        <form action="${pageContext.request.contextPath}/major/">
            <td><input type="hidden" name="page" value="${page.totalPage}"></td>
            <td><input type="submit" value="尾页"></td>
        </form>
    </tr>
</table>
<form action="${pageContext.request.contextPath}/major/">
    <table>
        <tr>
            <td>跳转到第:<input type="text" name="page" size="5"/>页</td>
            <td><input type="submit" value="确定"></td>
        </tr>
    </table>
</form>
</body>
<script>

    function load()
    {
        $("input:radio[name='ben'][value=${ben}]").attr('checked','true');
        $("input:radio[name='type'][value=${type}]").attr('checked','true');

    }
    window.onload=load;





    function like() {
        var ben = $("input[name='ben']:checked").val();
        var type = $("input[name='type']:checked").val();
        window.location.href= "${pageContext.request.contextPath}/major/?ben="+ben+"&type="+type;
    }
    $('input:radio[name="ben"]').change(like);
    $('input:radio[name="type"]').change(like);

    <%--function hide() {--%>
        <%--var type = document.getElementsByName("type");--%>
        <%--var ben_val =  ${type};--%>
        <%--var type_val = $("input[name='type']:checked").val();--%>
        <%--if (ben_val == '本科')--%>
        <%--{--%>
            <%--for (var i = 1; i <12 ; i++) {--%>
                <%--type[i].hidden = false;--%>
                <%--type[i].nextSibling.nodeValue = type[i].getAttribute("value");--%>
            <%--}--%>
            <%--for (var i = 13; i <32; i++) {--%>
                <%--type[i].hidden = true;--%>
                <%--type[i].nextSibling.nodeValue = "";--%>
            <%--}--%>

        <%--}--%>
        <%--else if(ben_val =='专科')--%>
        <%--{--%>

            <%--for (var i = 1; i <13 ; i++) {--%>
                <%--type[i].hidden = true;--%>
                <%--type[i].nextSibling.nodeValue = "";--%>
            <%--}--%>
            <%--for (var i = 13; i <32; i++) {--%>
                <%--type[i].hidden = false;--%>
                <%--type[i].nextSibling.nodeValue = type[i].getAttribute("value");--%>
            <%--}--%>

        <%--}--%>
        <%--else--%>
        <%--{--%>
            <%--for (var i = 1; i <31; i++) {--%>
                <%--type[i].hidden = false;--%>
                <%--type[i].nextSibling.nodeValue = type[i].getAttribute("value");--%>
            <%--}--%>
        <%--}--%>

    <%--}--%>
</script>
</html>
