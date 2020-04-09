<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-01
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
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

    <c:if test="${schools!=null||fn:length(schools)!=0}">
        <c:forEach items="${schools}" var = "school" begin="0" end="${fn:length(schools)}">
            <tr>
                <td><a href="${pageContext.request.contextPath}/school/${school.school_id}">${school.school_name}</a></td>
                    <%--<td>${school.Province.province_name}</td>--%>
                <td>${school.level_name}</td>
                <td>${school.heat_rank}</td>
                <td><button id="${school.school_name}" name="${school.school_name} ">高校对比</button></td>
            </tr>
        </c:forEach>
    </c:if>

</table>
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>

</body>
</html>
