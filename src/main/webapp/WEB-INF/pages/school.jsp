<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-02
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table frame="box" rules="all">
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>Money</td>
    </tr>
    <c:if test="${list!=null||fn:length(list)!=0}">
        <c:forEach items="${list}" var="school_information" begin="0" end="${fn:length(list)}">
            <tr>
                <td>${school_information.school_id}</td>
                <td>${school_information.school_name}</td>
                <td><a href="${school_information.home_page}" id="home_page">${school_information.home_page}</a></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
<script>
    var newhref = ${school_information.home_page}
    $('#home_page').attr("href",newhref)
</script>
</body>
</html>
