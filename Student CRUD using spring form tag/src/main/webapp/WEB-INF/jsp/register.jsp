<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>" ></script>
</head>
<body>
<h1>Student Registration Form</h1>
<form:form action="save" modelAttribute="stud" name="studentForm" onsubmit="return validateForm();">
ID : <form:input path="id"/> <br>
Name : <form:input path="name"/> <br>
Marks : <form:input path="marks"/> <br>

<input type="submit" value="Save">
</form:form>

</body>
</html>
