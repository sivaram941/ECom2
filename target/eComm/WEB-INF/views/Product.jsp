<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product1</title>
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
            </div>
        </div>
    </nav>
     <form:form method="POST" action="product.do" encode="multipart/form-data" modelAttribute="product">
    <div class="container">
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="id">Product ID</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="id" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="product_name">Product Name</form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="product_name" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="description">Description </form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="description" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="price">Price </form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="price" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="stock">Stock </form:label>
                </div>
                <div class="col-md-4">
                    <form:input path="stock" type="text"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4">
                    <form:input path="image" type="file"/>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="Catid">Category </form:label>
                </div>
                  <div class="col-md-4 inputchange">
                        <form:select path="Catid" class="form-control">
                            <optgroup label="This is a group">
                                
								<c:forEach items="${categoryList}" var="category">
								
									<form:option class="form-control" value="${category.id}">${category.categoryName}</form:option>
								</c:forEach>
                            </optgroup>
                        </form:select>
                    </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div class="col-md-4 col-md-offset-2">
                    <form:label path="Supid">Supplier </form:label>
                </div>
               <div class="col-md-4 inputchange">
                        <form:select path="Supid" class="form-control">
                            <optgroup label="This is a group">
                               <c:forEach items="${supplierList}" var="supplier">
								
									<form:option class="form-control" value="${supplier.id}">${supplier.supplier_name}</form:option>
								</c:forEach>
                            </optgroup>
                        </form:select>
                    </div>
            </div>
        </div>
       
        <div class="well">
            <div class="row">
                <div class="col-md-12">
                    <button class="btn btn-default" name="action" type="submit">Add </button>
                    <button class="btn btn-default" name="action" type="submit">Edit </button>
                    <button class="btn btn-default" name="action" type="submit">Delete </button>
                    <button class="btn btn-default" name="action" type="submit">Search </button>
                </div>
            </div>
        </div>
    </div>
    </form:form>
     <br>
<div class="container">
        <div class="well">     
		<table class ="table table-hover ">
		<thead>
		<tr>
	<th>ID</th>
	<th>Product name</th>
	<th>Product desc</th>
	<th>product price</th>
	<th>product stock</th>
	<th>image</th>
</tr>
</thead>	
<tbody>	
<c:forEach items="${productList}" var="product">
		<tr>
			<td>${product.id}</td>
			<td>${product.product_name}</td>
			<td>${product.description}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td><div class="thumbnail">
			<img height="200px" width="200px" atl="${product.id}"
			src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
			</div></td>
			
			
		</tr>
	</c:forEach>
	</tbody>	
	
</table>
</div>
</div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>