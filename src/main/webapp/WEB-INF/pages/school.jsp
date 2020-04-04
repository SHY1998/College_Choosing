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
        <td>学校Id</td>
        <td>学校名</td>
        <td>主页</td>
    </tr>
    <c:if test="${list!=null||fn:length(list)!=0}">
        <c:forEach items="${list}" var="school_information" begin="0" end="${fn:length(list)}">
            <tr>
                <td>${school_information.school_id}</td>
                <td>${school_information.school_name}</td>
                <td><a href="${school_information.home_page}" id="home_page">${school_information.home_page}</a></td>

            </tr>
            <span>${school_information.heat_rank}</span><br>
            <span>${school_information.headt_total}</span><br>
            <span>${school_information.level_name}</span><br>
            <span>${school_information.type_name}</span><br>
            <span>${school_information.belong}</span><br>
            <span>${school_information.country_name}</span><br>
            <span>${school_information.nature_name}</span><br>
            <span>${school_information.school_phone}</span><br>
            <span>${school_information.school_emil}</span><br>
            <span>${school_information.learning_index}</span><br>
            <span>${school_information.life_index}</span><br>
            <span>${school_information.empliyment_index}</span><br>
            <span>${school_information.composite_score}</span><br>
            <span>${school_information.doctoral_degree}</span><br>
            <span>${school_information.the_master}</span><br>
            <span>${school_information.key_discipline}</span><br>
            <span>${school_information.key_laboratory}</span><br>
            <span>${school_information.male_rate}</span><br>
            <span>${school_information.famale_rate}</span><br>
            <span>${school_information.job_rate}</span><br>
            <span>${school_information.graduation_rate}</span><br>
            <span>${school_information.go_abroad_rate}</span><br>

        </c:forEach>
    </c:if>
</table>
<script>
    var newhref = ${school_information.home_page}
    $('#home_page').attr("href",newhref)
</script>
</body>
</html>
