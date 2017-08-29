<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>category1</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/styles.css"/>">
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="#"> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="active" role="presentation"><a href="#">category </a></li>
                    <li role="presentation"><a href="#">Supplier</a></li>
                    <li role="presentation"><a href="#">Product </a></li>
                </ul>
                  <sec:authorize access="isAuthenticated()">
                    <li role="presentation" class="box"><a href="cart">Cart </a></li>
                    <li class="box"> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                              </sec:authorize>
            </div>
        </div>
    </nav>
    <form:form method="POST" action="category.do" modelAttribute="category">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-2">
                    <form:label path="id" > Category ID</form:label>
                </div>
                <div class="col-md-4 col-md-offset-0">
                    <form:input class="form-control" path="id" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-2">
                    <form:label path="categoryName">Category Name</form:label>
                </div>
                <div class="col-md-4 col-md-offset-0">
                    <form:input class="form-control" path="categoryName" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-3 col-md-offset-2">
                    <form:label path="categoryDescription">Description </form:label>
                </div>
                <div class="col-md-4 col-md-offset-0">
                    <form:textarea  class="form-control"  path="categoryDescription"></form:textarea> 
                </div>
            </div>
        </div>
        </form:form>
        <div class="well">
            <div class="row">
                          
      <div class="row">
	  <div class="col-md-offset-2 col-sm-8 col-xs-6">
	
                <input class="btn btn-lg btn-success" type="submit" name="action" value="Add" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Edit" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Delete" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Search" />
                </div>
    </div>     
            </div>
        </div>
    </div>
        
    <br>
   <div class="container">
        <div class="well">  
<table class="table table-hover" >
<thead>
<tr>
	<th>ID</th>
	<th>Category name</th>
	<th>Category desc</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${categoryList}" var="category">
		<tr>
			<td>${category.id}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDescription}</td>
			
		</tr>
	</c:forEach>
</tbody>
</table>
</div>
    </div>
      <div 
   <c:import url="/WEB-INF/views/Footer.jsp" />>
</div>
    <script src="<c:url value="/resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body>

</html>