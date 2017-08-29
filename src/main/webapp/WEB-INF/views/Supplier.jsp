<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
   
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>supplier1</title>
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
                    <li class="active" role="presentation"><a href="#">Category </a></li>
                    <li role="presentation"><a href="#">Product </a></li>
                    <li role="presentation"><a href="#">Supplier </a></li>
                </ul>
                  <sec:authorize access="isAuthenticated()">
                    <li role="presentation" class="box"><a href="cart">Cart </a></li>
                    <li class="box"> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                              </sec:authorize>
            </div>
        </div>
    </nav>
    <form:form method="POST" action="supplier.do" modelAttribute="supplier">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-4">
                    <form:label path="id" >supplier id</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="id" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4">
                    <form:label path="supplier_name" >Supplier Name</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="supplier_name" type="text"/>
                </div>
            </div>
        </div>
        
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-0">
                     <input class="btn btn-lg btn-success" type="submit" name="action" value="Add" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Edit" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Delete" />
				<input class="btn btn-lg btn-success"  type="submit" name="action" value="Search" /> </div>
            </div>
        </div>
    </div>
       <div>
   <c:import url="/WEB-INF/views/Footer.jsp" />>
</div>
    </form:form>
    <script src="<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
</body> 
</html>