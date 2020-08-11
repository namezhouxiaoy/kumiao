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
    <title></title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

        $(function () {

            /*var email= getUrlParam("email")*/
            var email="123456@163.com";
            $("#hhh").append(email)
            $("#button").click(function () {
                var age=$("#age1").val();
                var sex=$("select").val();
                var cellphone =$("#shouji").val();
                // 验证密码是否合法：字母数字下划线组成，4-16位
                if (isNaN(Number(age))){
                    alert("年龄只为数字")
                }else if (age>100) {
                    alert("年龄小于100")
                }else if (!(/^1[3458]\d{9}$/.test(cellphone))){
                    alert("不是正确的11位手机号")
                }else {
                    $.ajax({
                        url: "/wanshanxinxi",
                        data: {"email": email, "age": age, "sex": sex, "cellphone": cellphone},
                        type: "post",
                        success: function (result) {
                            if (result) {
                                alert("提交成功")
                            } else {
                                alert("提交失败")
                            }
                        }
                    })
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


    <style type="text/css">
        *{margin:0px;
            padding:0px;}
        body{

            background-repeat:repeat-x;}
        #box{
            width:900px;
            margin:0 auto;
            margin-top:30px;
        }
        img{width:70px;
        }
        #box_logo{
            position:relative;
            left:350px;
        }
        h2{position:relative;
            top:20px;
            left:296px;
            color:#0E0E0E;
            font-family:"宋体";
            font-size:30px;}
        form{width: 500px;
            overflow: hidden;
            margin: 50px auto;}
        input{width: 280px;
            padding-left: 10px;
            height: 30px;
            line-height: 30px;
            color: #333;
            font-size: 14px;
            border: 1px solid #666;
            margin-bottom: 15px;
            display: inline-block;}

        #box_footer{position:relative;
            top:40px;
            text-align:center;}
        #box_footer p{
            font-size:14px;}
        a:link,a:visited{
            text-decoration:none;
            color:black;}
        a:hover{
            text-decoration:underline;
            color:#F33;}
        #button{margin-left:150px;
            width:100px;
            margin-top:20px;
            background-color: #CCC;}
    </style>
</head>
<body>
<div id="box">
    <div id="box_logo">
    </div>

    <h2>完善个人信息</h2>
<div><h3 id="hhh">用户邮箱: </h3></div>
    <form>
        用户年龄: <input type="text" name="age" placeholder="格式1~100" id="age1"> <br>
        性别:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select style="height: 30px" >
        <option value="男" >男</option>
        <option value="女" >女</option>
        </select><br>
        <br>
        手机号码: <input type="text" name="mobile" maxlength="11" placeholder="请输入正确的11位号码" id="shouji"><br>

        <input type="button" id="button" value="提交">

    </form>
    <a href="index1.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;返回</a>
    <hr/>
    <div id="box_footer"><p>


    </p><br/>
        <p><p>
    </div>
</div>
</body>

</html>


