<%--
  Created by IntelliJ IDEA.
  User: 周晓宇
  Date: 2020/7/10
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>

<html>
<head>
    <title>修改密码</title>
    <link rel="stylesheet" href="css/style1.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
   $(function () {
  var email=  getUrlParam("email");

    $("h1").append("用户："+email);

$("#quueren").click(function () {
    var password=$("#jiupassword").val()
    var password1=$("#xinpassword").val()

    $.ajax({
      url:"/chazhaojiupassword",
      data:{"email":email,"password":password,"password1":password},
      type:"post",
  success:function (result) {
      if (result=="1") {
          $("h3").append("修改成功")
          alert("修改成功，请点击返回")
      }
      if (result=="2"){
          alert("修改失败请重试")
      }
      if(result=="3"){
         alert("您输入的旧密码错误")
          $("#hh").append("您输入的旧密码错误")
      }

  }


    })



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
<form  class="box">
    <h1 style="border-color: #fdfffc"></h1>
    <h3 style="border-color: red" id="hh"></h3>
    <input type="text" name="jiu" placeholder="旧密码" id="jiupassword">
    <input type="password" name="xin" placeholder="新密码" id="xinpassword">
    <input type="button" id="quueren" value="确认修改">
<a href="">返回</a>
</form>



</body>
</html>
