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
            <dt>专业层次</dt>
            <dd>
                <a href="#" rel="" name="type" class="all on">全部</a>
                <a href="#" rel="本科 " name="type" class="default">本科 </a>
                <a href="#" rel="专科（高职) " name="type" class="default">专科（高职) </a>
            </dd>
        </dl>
        <dl class="cation-list">
            <dt>专业门类</dt>
            <dd>
                <a href="#" rel="" name="type" class="all on">全部</a>
                <a href="#" rel="哲学" name="type" class="default">哲学 </a>
                <a href="#" rel="经济学" name="type" class="default">经济学 </a>
                <a href="#" rel="法学" name="type" class="default">法学 </a>
                <a href="#" rel="教育学" name="type" class="default">教育学</a>
                <a href="#" rel="文学" name="type" class="default">文学</a>
                <a href="#" rel="历史学" name="type" class="default">历史学</a>
                <a href="#" rel="理学 " name="type" class="default">理学 </a>
                <a href="#" rel="工学 " name="type" class="default">工学 </a>
                <a href="#" rel="农学 " name="type" class="default">农学 </a>
                <a href="#" rel="医学 " name="type" class="default">医学 </a>
                <a href="#" rel="管理学  " name="type" class="default">管理学  </a>
                <a href="#" rel="艺术学  " name="type" class="default">艺术学  </a>
                <a href="#" rel="农林牧渔大类  " name="type" class="default">农林牧渔大类  </a>
                <a href="#" rel="资源环境与安全大类  " name="type" class="default">资源环境与安全大类  </a>
                <a href="#" rel="能源动力与材料大类  " name="type" class="default">能源动力与材料大类  </a>
                <a href="#" rel="土木建筑大类  " name="type" class="default">土木建筑大类  </a>
                <a href="#" rel="水利大类  " name="type" class="default">水利大类  </a>
                <a href="#" rel="装备制造大类  " name="type" class="default">装备制造大类  </a>
                <a href="#" rel="生物与化工大类  " name="type" class="default">生物与化工大类  </a>
                <a href="#" rel="轻工纺织大类  " name="type" class="default">轻工纺织大类  </a>
                <a href="#" rel="食品药品与粮食大类  " name="type" class="default">食品药品与粮食大类  </a>
                <a href="#" rel="交通运输大类  " name="type" class="default">交通运输大类  </a>
                <a href="#" rel="电子信息大类  " name="type" class="default">电子信息大类  </a>
                <a href="#" rel="医药卫生大类  " name="type" class="default">医药卫生大类  </a>
                <a href="#" rel="财经商贸大类  " name="type" class="default">财经商贸大类  </a>
                <a href="#" rel="旅游大类  " name="type" class="default">旅游大类  </a>
                <a href="#" rel="文化艺术大类  " name="type" class="default">文化艺术大类  </a>
                <a href="#" rel="新闻传播大类  " name="type" class="default">新闻传播大类  </a>
                <a href="#" rel="教育与体育大类  " name="type" class="default">教育与体育大类  </a>
                <a href="#" rel="公安与司法大类  " name="type" class="default">公安与司法大类  </a>
                <a href="#" rel="公共管理与服务大类  " name="type" class="default">公共管理与服务大类  </a>
            </dd>
        </dl>

    </div>

    <div class="container">
        <div class="usteel-table">
            <section>
                <p class="t_th">
                    <span>专业类别</span>
                    <span>专业名称</span>
                    <span>报考热度排名</span>
                    <span>层次</span>
                    <span>就业前景</span>
                    <span>开设院校</span>
                </p>
                <c:if test="${list!=null||fn:length(list)!=0}">
                    <c:forEach items="${list}" var = "school" begin="0" end="${fn:length(list)}">
                        <a class="t_tr" href="?id=11">
                            <span  >${school.school_name}</span>
                            <span >${school.type.type_name}</span>
                            <span >${school.type_name}</span>
                            <span >${school.heat_total}</span>
                            <span ><strong>+</strong>对比</span>
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
