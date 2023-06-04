<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>" ></script>

</head>
<body>
<form:form action="update" modelAttribute="stud">
ID : <form:input path="id" readonly="readonly"/> <br>
Name : <form:input path="name"/> <br>
Marks : <form:input path="marks"/> <br>

<input type="submit" value="UPDATE">

</form:form>

</body>
</html>