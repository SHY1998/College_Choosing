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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/School.js"></script>
<body >
<h2>学校</h2>
<div >
    <input name="pro" type="radio" value="" checked="checked">全部
    <input name="pro" type="radio" value="北京">北京
    <input name="pro" type="radio" value="河北">河北
    <input name="pro" type="radio" value="天津">天津
    <input name="pro" type="radio" value="山西">山西
    <input name="pro" type="radio" value="内蒙古">内蒙古
    <input name="pro" type="radio" value="辽宁">辽宁
    <input name="pro" type="radio" value="吉林">吉林
    <input name="pro" type="radio" value="黑龙江">黑龙江
    <input name="pro" type="radio" value="上海">上海
    <input name="pro" type="radio" value="江苏">江苏
    <input name="pro" type="radio" value="浙江">浙江
    <input name="pro" type="radio" value="安徽">安徽
    <input name="pro" type="radio" value="福建">福建
    <input name="pro" type="radio" value="江西">江西
    <input name="pro" type="radio" value="山东">山东
    <input name="pro" type="radio" value="河南">河南
    <input name="pro" type="radio" value="湖北">湖北
    <input name="pro" type="radio" value="湖南">湖南
    <input name="pro" type="radio" value="广东">广东
    <input name="pro" type="radio" value="广西">广西
    <input name="pro" type="radio" value="海南">海南
    <input name="pro" type="radio" value="重庆">重庆
    <input name="pro" type="radio" value="四川">四川
    <input name="pro" type="radio" value="贵州">贵州
    <input name="pro" type="radio" value="云南">云南
    <input name="pro" type="radio" value="西藏">西藏
    <input name="pro" type="radio" value="陕西">陕西
    <input name="pro" type="radio" value="甘肃">甘肃
    <input name="pro" type="radio" value="青海">青海
    <input name="pro" type="radio" value="宁夏">宁夏
    <input name="pro" type="radio" value="新疆">新疆
    <input name="pro" type="radio" value="香港">香港
    <input name="pro" type="radio" value="澳门">澳门
</div>
<div>
    <input name="type" type="radio" value="" checked = checked/>全部
    <input name="type" type="radio" value="综合类"/>综合
    <input name="type" type="radio" value="理工类"/>理工
    <input name="type" type="radio" value="农林类"/>农林
    <input name="type" type="radio" value="医药类"/>医药
    <input name="type" type="radio" value="师范类"/>师范
    <input name="type" type="radio" value="语言类"/>语言
    <input name="type" type="radio" value="财经类"/>财经
    <input name="type" type="radio" value="政法类"/>政法
    <input name="type" type="radio" value="体育类"/>体育
    <input name="type" type="radio" value="艺术类"/>艺术
    <input name="type" type="radio" value="民族类"/>民族
    <input name="type" type="radio" value="军事类"/>军事
</div>
<div>
    <input name="level" type="radio" value="" checked=checked/>全部
    <input name="level" type="radio" value="普通本科"/>普通本科
    <input name="level" type="radio" value="专科"/>专科
</div>
<div>
    <form method="get" action="${pageContext.request.contextPath}/test/search">
        <input type="text" name="province">
        <button type="submit" id="ceshi" name="ccccc">查询</button>
    </form>
</div>
<button type="button" id="btn">北京</button>
<table frame="box" rules="all">
    <tr align="center">
        <td rowspan="2">学校名称</td>
        <td rowspan="2">所在地</td>
        <td rowspan="2">办学类型</td>
        <td colspan="2">报名热度</td>
        <td rowspan="2">高校对比</td>
    </tr>
    <tr align="center">
        <td>全国热度排名</td>
        <td>类别热度排名</td>
    </tr>
    <c:if test="${list!=null||fn:length(list)!=0}">
        <c:forEach items="${list}" var = "school" begin="0" end="${fn:length(list)}">
            <tr>
                <td><a href="${pageContext.request.contextPath}/school/${school.school_id}">${school.school_name}</a></td>
                    <%--<td>${school.Province.province_name}</td>--%>
                <td>${school.province.province_name}</td>
                <td>${school.level_name}</td>
                <td>${school.heat_rank}</td>
                <td>${school.type_name} ${school.heat_rank_type}</td>
                <td><button id="${school.school_name}" name="${school.school_name} " onclick="Contrast('${school.school_name}')">高校对比</button></td>
            </tr>
        </c:forEach>
    </c:if>
</table>
<table>
    <tr itemid="${page}">
        <form action="${pageContext.request.contextPath}/test/search">
            <td><input type="hidden" name="page" value="1"></td>
            <td><input type="hidden" name="province" value="${province}"></td>
            <td><input type="submit" value="首页"></td>
        </form>

        <form action="${pageContext.request.contextPath}/test/search">
            <td><input type="hidden" name="page" value="${page.prefPage}"></td>
            <td><input type="hidden" name="province" value="${province}"></td>
            <td><input type="submit" value="上一页"></td>
        </form>
        <td>当前：第${page.currentPage}页<--></td>
        <td>共：${page.totalPage}页</td>

        <form method="GET" action="${pageContext.request.contextPath}/test/search">
            <td><input type="hidden" name="province" value="${province}"></td>
            <td><input type="hidden" name="page" value="${page.nextPage}"></td>
            <td><input type="submit" value="下一页"></td>
        </form>

        <form method="GET" action="${pageContext.request.contextPath}/test/search ">
            <td><input type="hidden" name="page" value="${page.totalPage}"></td>
            <td><input type="hidden" name="province" value="${province}"></td>
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
<div>
    <%--<button onclick="id_send()">传递数组</button>--%>
    <ul id="selectedplan">
    </ul>
    <form action="/test/schools_compare">
        <input hidden="hidden" id="school_hidden" name="school_hidden">
        <input type="submit" value="确定提交" onclick="hidden_value()">
    </form>
</div>

</body>
<script>
    //选中对比学校的个数
    var selectNub = 0;
    
    function hidden_value() {
        var cit = new Array();
        var   ul = document.getElementById("selectedplan").getElementsByTagName("li");
        for(var i =0;i<ul.length;i++)
        {
            cit[i] = ul[i].getAttribute("value");
        }
        var c = cit.join();
        document.getElementById("school_hidden").setAttribute("value",c);
        alert(document.getElementById("school_hidden").value);
    }



    function schooldelete() {
        var delete_school = this.parentElement.firstChild.nodeValue;
        document.getElementById(delete_school).disabled = false;
        this.parentElement.remove();
        selectNub = selectNub -1;

    }

    function Contrast(name) {
        if (selectNub<4)
        {
            selectNub  +=1;
            var ul = document.getElementById("selectedplan");
            var li = document.createElement("li");
            li.textContent = name;
            li.setAttribute("value",name);var a =document.createElement("a");
            a.textContent="删除";
            a.addEventListener("click",schooldelete);
            li.appendChild(a);
            ul.appendChild(li);

            alert(name);
            // var s = document.getElementsByName(name);
            // document.getElementsByName(name).attr("disabled","true");
            var thi = "ceshi";
            document.getElementById(name).disabled  = true;
        }
        else
        {
            alert("最多选中四所学校");
        }

    }
    
    function load()
    {
        $("input:radio[name='pro'][value=${province}]").attr('checked','true');
        $("input:radio[name='type'][value=${type}]").attr('checked','true');
        $("input:radio[name='level'][value=${level}]").attr('checked','true');
    }
    window.onload = load;
    /**
     * 单选框
     */
    $('input:radio[name="pro"]').change(like);
    $('input:radio[name="type"]').change(like);
    $('input:radio[name="level"]').change(like);

    function like()
    {
        var pro = $("input[name='pro']:checked").val();
        var type = $("input[name='type']:checked").val();
        var level = $("input[name='level']:checked").val();
        alert(level);
        alert("${pageContext.request.contextPath}/test/search?province=\"+pro+\"&type=\"+type+\"&level=\"+level");
        window.location.href="${pageContext.request.contextPath}/test/search?province="+pro+"&type="+type+"&level="+level;
        <%--window.location.href="${pageContext.request.contextPath}/school/search?province="--%>
    }
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
                url:"${pageContext.request.contextPath}/school/list",
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
