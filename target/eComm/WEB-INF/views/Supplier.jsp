<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<h1></h1>
<form:form action="supplier.do" method="POST" modelAttribute="supplier" commandName="supplier">
	<table>
		<tr>
			<td><form:label path="id">supplier id</form:label> </td>
			<td><form:input path="id" /></td>
		</tr>
		<tr>
			<td><form:label path="supplier_name">supplier name</form:label></td>
			<td><form:input path="supplier_name" /></td>
		</tr>
		<tr>
		
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Supplier name</th>
		
	<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.id}</td>
			<td>${supplier.supplier_name}</td>
			
			
		</tr>
	</c:forEach>
</table>
</body>
</html>