<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/22
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../../js/jquery-1.11.0.min%20.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn").on("click",function () {
                var error='';
                var flag=true;

                var username=$("#uname").val();

                var password=$("#pwd").val();

                if (username==''||username==undefined){
                    error="用户名不能为空!";
                    flag=false;
                }
                if (password==''||password==undefined){
                    error="密码不能为空!";
                    flag=false;
                }
                if (flag==true&&error==''){
                    $("#formId").submit();
                }else {
                    alert(error);
                    return;
                }
            });
        });
    </script>
</head>
<body>
<h1>登录</h1>
<p style="color: red">${errorMsg}</p>
<form:form action="/doLogin" method="post" modelAttribute="user" id="formId">
    账号：<form:input path="uName" id="uname"></form:input><br>
    密码：<form:password path="password" id="pwd"></form:password><br>
    <input type="button" value="登录" id="btn">
</form:form>
</body>
</html>
