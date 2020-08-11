<%--
  Created by IntelliJ IDEA.
  User: 周晓宇
  Date: 2020/7/10
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 maximum-scale=1.0, user-scalable=no"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    <link rel="stylesheet" type="text/css" href="css/style2.css" />
    <link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(function () {
    var email=  getUrlParam("email");


 $.ajax({
     url:"/chakangeren",
     data:{"email":email},
     type:"post",
     success:function (result) {
       var zhuangt="";
        if(result.zhuangt==0){
            zhuangt="非会员";
        }else {
            zhuangt="会员";
        }

         var str="";
             str+="<tr>" +
                 "<td>"+result.email+"</td>" +
                 "<td>"+result.cellphone+"</td>" +
                 "<td>"+result.age+"</td>" +
                 "<td>"+result.sex+"</td>" +
                 "<td>"+result.zcdate+"</td>" +
                 "<td>"+zhuangt+"</td>" +
                 "<td id='fanhui'>返回</td>" +
                 "</tr>"
         $("#chax").empty().append(str);



     }



 })







})

    //获取地址栏参数,可以是中文参数
    function getUrlParam(key) {
        // 获取参数
        var url = window.location.search;
        //localhost:8080/doc?name=zhangsan&password=abc123
        // 正则筛选地址栏
        var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
        // 匹配目标参数
        var result = url.substr(1).match(reg);
        //返回参数值
        return result ? decodeURIComponent(result[2]) : null;
    }

</script>



</head>
<body>

<div class="container">
    <div id="page">
        <h2>个人基本信息</h2>
        <table id="table">
            <thead>
            <tr>
                <th>邮箱</th>
                <th>手机</th>
                <th>年龄</th>
                <th>性别</th>
                <th>注册日期</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>

            <tbody id="chax">
           <%-- <tr>
                <td>${list.user_name}</td>
                <td>25</td>
                <td>Female</td>
                <td>5'4</td>
                <td>British Columbia</td>
                <td>Volleyball</td>
               <td><a href="index1.jsp">返回</a></td>
            </tr>--%>
            </tbody>

        </table>

    </div>
</div>

</body>
</html>