<%--
  Created by IntelliJ IDEA.
  User: 23226
  Date: 2020-04-18
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>精准高考</title>
    <script src="../../js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="../../js/current.js"></script>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../tools/layui/layui.js" charset="utf-8"></script>

    <script type="text/javascript" src="../../tools/usteel-search/search.js"></script>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/s">--%>
    <link href="../../css/SelectCss.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="../../tools/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="../../tools/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../../tools/usteel-search/search.css" />
    <link rel="stylesheet" type="text/css" href="../../tools/usteel-search/search.css">
    <!--<link rel="stylesheet" href="../../css/searchCss.css">-->

</head>
<body>
<%@ include file="HeaderPage.jsp"%><br>
<div class="container">
    <form onsubmit="event.preventDefault();" role="search">
        <input id="search" type="search" placeholder="查询学校" autofocus required />
        <button type="submit" >Go</button>
    </form>
</div>
<div class="cation-content container">
    <div style="height:50px"></div> <!-- 可以删除 -->
    <div class="cation-middle">
        <dl class="cation-list">
            <dt>所属地区</dt>
            <dd>
                <a href="#" rel="" name="province" class="all on">全部</a>
                <a href="#" rel="北京" name="province" class="default">北京 </a>
                <a href="#" rel="河北" name="province" class="default">河北 </a>
                <a href="#" rel="天津 " name="province" class="default">天津 </a>
                <a href="#" rel="山西 " name="province" class="default">山西</a>
                <a href="#" rel="内蒙古" name="province" class="default">内蒙古</a>
                <a href="#" rel="辽宁 " name="province" class="default">辽宁 </a>
                <a href="#" rel="吉林 " name="province" class="default">吉林 </a>
                <a href="#" rel="黑龙江 " name="province" class="default">黑龙江 </a>
                <a href="#" rel="上海 " name="province" class="default">上海 </a>
                <a href="#" rel="江苏 " name="province" class="default">江苏 </a>
                <a href="#" rel="浙江  " name="province" class="default">浙江  </a>
                <a href="#" rel="安徽  " name="province" class="default">安徽  </a>
                <a href="#" rel="福建  " name="province" class="default">福建  </a>
                <a href="#" rel="江西  " name="province" class="default">江西  </a>
                <a href="#" rel="山东  " name="province" class="default">山东  </a>
                <a href="#" rel="河南  " name="province" class="default">河南  </a>
                <a href="#" rel="湖北  " name="province" class="default">湖北  </a>
                <a href="#" rel="湖南  " name="province" class="default">湖南  </a>
                <a href="#" rel="广东  " name="province" class="default">广东  </a>
                <a href="#" rel="广西  " name="province" class="default">广西  </a>
                <a href="#" rel="海南  " name="province" class="default">海南  </a>
                <a href="#" rel="重庆  " name="province" class="default">重庆  </a>
                <a href="#" rel="四川  " name="province" class="default">四川  </a>
                <a href="#" rel="贵州  " name="province" class="default">贵州  </a>
                <a href="#" rel="云南  " name="province" class="default">云南  </a>
                <a href="#" rel="西藏  " name="province" class="default">西藏  </a>
                <a href="#" rel="陕西  " name="province" class="default">陕西  </a>
                <a href="#" rel="甘肃  " name="province" class="default">甘肃  </a>
                <a href="#" rel="青海  " name="province" class="default">青海  </a>
                <a href="#" rel="宁夏  " name="province" class="default">宁夏  </a>
                <a href="#" rel="新疆  " name="province" class="default">新疆  </a>
                <a href="#" rel="香港  " name="province" class="default">香港  </a>
                <a href="#" rel="澳门 " name="province" class="default">澳门 </a>
                <a href="#" rel="台湾 " name="province" class="default">台湾 </a>
            </dd>
        </dl>
        <dl class="cation-list">
            <dt>院校类型</dt>
            <dd>
                <a href="#" rel="" name="type" class="all on">全部</a>
                <a href="#" rel="综合 " name="type" class="default">综合 </a>
                <a href="#" rel="理工 " name="type" class="default">理工 </a>
                <a href="#" rel="农林" name="type" class="default">农林</a>
                <a href="#" rel="医药 " name="type" class="default">医药 </a>
                <a href="#" rel="师范 " name="type" class="default">师范 </a>
                <a href="#" rel="语言 " name="type" class="default">语言 </a>
                <a href="#" rel="财经 " name="type" class="default">财经 </a>
                <a href="#" rel="政法 " name="type" class="default">政法 </a>
                <a href="#" rel="体育 " name="type" class="default">体育 </a>
                <a href="#" rel="艺术 " name="type" class="default">艺术 </a>
                <a href="#" rel="民族 " name="type" class="default">民族 </a>
                <a href="#" rel="军事" name="type" class="default">军事</a>
            </dd>
        </dl>
        <dl class="cation-list">
            <dt>办学类型</dt>
            <dd>
                <a href="#" rel="" name="level" class="all on">全部</a>
                <a href="#" rel="普通本科 " name="level" class="default">普通本科 </a>
                <a href="#" rel="专科 " name="level" class="default">专科 </a>
            </dd>
        </dl>
    </div>

    <div class="container">
        <div class="usteel-table">
            <section>
                <p class="t_th">
                    <span>学校名称</span>
                    <span>所在地</span>
                    <span>办学类型</span>
                    <span>高校热度</span>
                    <span>高校对比</span>
                    <span>关注</span>
                </p>
                <c:if test="${list!=null||fn:length(list)!=0}">
                    <c:forEach items="${list}" var = "school" begin="0" end="${fn:length(list)}">
                        <a class="t_tr" href="?id=11">
                            <span aria-rowspan="4">${school.school_name}</span>
                            <span >${school.province.province_name}</span>
                            <span >${school.type_name}</span>
                            <span >${school.heat_total}</span>
                            <span ><strong>+</strong>对比</span>
                            <span>关注</span>
                        </a>
                    </c:forEach>
                </c:if>
            </section>
            <center id="page" class="page"></center>
        </div>
    </div>
</div>
<%@ include file="FootPage.jsp"%>
</body>
<script type="text/javascript">
    $(function(){
        new SelectTag({
            child: ".default", /*所有默认*/
            over: 'on', /*当前选中*/
            all: ".all" /*默认全部*/
        });
    });
    layui.use(['form', 'layedit', 'laydate', 'carousel', 'element', 'laypage'], function () {
        var layer = layui.layer,
            laypage = layui.laypage,
            element = layui.element;

        laypage.render({
            elem: 'page',
            count: ${total},
            layout: ['page', 'limit', 'skip', 'count', ],
            type: '#3e88f5',
            curr: "1" //获取起始页
            ,
            limit: "20",
            jump: function (obj, first) {
                //obj包含了当前分页的所有参数，比如：
                //		    console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                //		    console.log(obj.limit); //得到每页显示的条数
                //首次不执行
                if (!first) {
                    //					var load = layer.load(2, {shade: [0.1,'#000']});
                    locationHref("https://blog.csdn.net/weixin_42098002/article/details/89923172");
                }
            }
        });
    });

</script>
</html>
