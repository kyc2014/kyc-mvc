<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<form method="POST" action="<c:out value="${pageContext.request.contextPath}"/>/web/user/login">
User Name or Email:<input name="user_identifier" type="text" value=""/><br/>
Password:<input name="password" type="password" value=""/><br/>
<input type="submit" value="Submit"/>
</form>
<c:out value="${sessionScope}" />
<c:out value="${userName}" />