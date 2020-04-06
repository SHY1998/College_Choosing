function load()
    {
        $("input:radio[name='pro'][value=${province}]").attr('checked','true');
        $("input:radio[name='type'][value=${type}]").attr('checked','true');

    }
    // window.onload = load;
//界面刷新时弹出加载该界面
window.onload = function() {
    //alert('调用界面成功加载该JS！');
    var province = ${province};
    alert("3");
    alert(province);

};
    /**
    * 单选框
    */
    $('input:radio[name="pro"]').change(like);
    $('input:radio[name="type"]').change(like);
    function like()
    {
        var pro = $("input[name='pro']:checked").val();
        var type = $("input[name='type']:checked").val();
        window.location.href="${pageContext.request.contextPath}/school/search?province="+pro+"&type="+type;
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
    })}
