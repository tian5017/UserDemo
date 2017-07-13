<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, target-densitydpi=medium-dpi, initial-scale=0.5, minimum-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <title>用户列表</title>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:forEach items="${userList}" var="user" varStatus="status">
    <div>
        <p>用户ID：${user.userId}</p>
        <p>用户名：${user.userName}</p>
        <p>用户密码：${user.userPassword}</p>
        <p>用户年龄：${user.userAge}</p>
        <p>用户手机：${user.userPhone}</p>
        <p>-------------------------------</p>
    </div>
</c:forEach>
<form method="post" action="${contextPath}/user/save">
    用户名：<input type="text" name="userName"/><br/>
    用户密码：<input type="password" name="userPassword"/><br/>
    用户年龄：<input type="number" name="userAge"/><br/>
    用户手机：<input type="number" name="userPhone"/><br/>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
