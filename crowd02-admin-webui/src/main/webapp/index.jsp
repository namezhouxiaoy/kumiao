<%--
  Created by IntelliJ IDEA.
  User: 周晓宇
  Date: 2020/8/8
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

  $(function () {
      $("#tijiao").click(function () {
              if ($("#email1").val()==""){
                  alert("邮箱不能为空")
              }else if($("#password1").val()==""){
                  alert("密码不能为空")
              }else {
                  var email =  $("#email1").val();
                  $.ajax({
                      url:"/zhuce1",
                      data:{"email":email},
                      type:"post",
                      success:function (result) {
                          if(result){
                              alert("用户已存在")
                          }else {
                              var password= $("#password1").val();
                              $.ajax({
                                  url:"/zhuce2",
                                  data:{"email":email,"password":password},
                                  type:"post",
                                  success:function (result2) {
                                      if (result2) {
                                          alert("注册成功");
                                      }else {
                                          alert("注册失败！请重试")
                                      }

                                  }
                              })


                          }
                      }

                  })





              }




      })



  })



</script>

</head>
<body>

邮箱注册：<input type="text" id="email1" name="email"><br>
注册密码：<input type="password" id="password1" name="password"><br>
<input type="button" value="提交" id="tijiao">


</body>
</html>
