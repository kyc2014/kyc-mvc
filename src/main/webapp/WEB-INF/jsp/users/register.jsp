<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<form method="POST" action="/web/user/add">
First Name:<input name="first_name" type="text" value=""/><br/>
Second Name:<input name="second_name" type="text" value=""/><br/>
User Name:<input name="user_name" type="text" value=""/><br/>
Email:<input name="email" type="text" value=""/><br/>
Password:<input name="password" type="password" value=""/><br/>
Constituency Code:<input name="constituency_code" type="text" value=""/><br/>
Date of Birth:<input name="dob" type="text" value=""/><br/>
Gender:<input name="gender" type="text" value=""/><br/>
Mobile:<input name="mobile" type="text" value=""/><br/>
<input type="submit" value="Submit"/>
</form>
