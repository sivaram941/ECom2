<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
  <link rel="stylesheet" href="<c:url value="resources/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="<c:url value="resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/styles.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Footer.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Pretty-Registration-Form.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/assets/css/Google-Style-Login.css"/>">
</head>

<body>
${error}
${logout }
   <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand navbar-link" href="index"><img src="resources/assets/" width="70px" id="logo"> Zoom kart</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" data-hover="dropdown">Menu<i class="glyphicon glyphicon-align-justify"></i> <span class="caret hidden"></span></a>
                        <ul class="dropdown-menu" role="menu">
                        <c:forEach items="${categoryList}" var="category">
                            <li role="presentation"><a href="product${category.id}">${category.categoryName}</a></li>
                            </c:forEach>
                        </ul>
                    </li>

 			 <sec:authorize access="!isAuthenticated()">                
 	    			<li role="presentation"><a href="login">Login <i class="glyphicon glyphicon-log-in"></i></a></li>
                    <li role="presentation"><a href="signup">SignUp <i class="glyphicon glyphicon-user"></i></a></li>
             </sec:authorize>
            
             <sec:authorize access="isAuthenticated()">
            		  <li class="active" role="presentation"><a href="cart">Shop<i class="glyphicon glyphicon-shopping-cart"></i></a></li>
                      <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
             </sec:authorize>

                </ul>
            </div>
        </div>
    </nav>