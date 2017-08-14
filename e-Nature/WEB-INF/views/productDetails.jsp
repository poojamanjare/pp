<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-lg-6 item-photo">
<img src="${pageContext.request.contextPath}/resources/${product.imgname}" style="max-width: 50%;margin-top: 30px;"/>
</div>
<div class="col-lg-7">
<h2>${product.name}</h2><br>
<h4><b>Description: </b>${product.description}</h4>
<h4><b>Price: </b>${product.price }</h4>
<h4><b>Supplier Name: </b>${product.supplier.supplierName }</h4>
</div>
<div class="section">
<form action="${pageContext.request.contextPath}/addToCart" method="post">
<input type="hidden" value="${product.id }" name="pid"/>
<input type="hidden" value="${product.name }" name="pName"/>
<input type="hidden" value="${product.price }" name="pPrice"/>
<input type="hidden" value="${product.imgname }" name="imgname"/>

<br>
<label>Mention Quantity of product for purchase</label><br>
<input type="number" class="form-control" name="qty" required/><br>
<input class="btn btn-primary btn-lg" type="submit" value="add To Cart">
</form>
</div>
<!-- <div class="col-sm-9">
<label><h3>Description</h3></label>
<hr>
<p>feyueksfv\sdhvcfeygfuvwhdjassuwhxc  sfhed  wefv hjftghjsknc  hfvbsdcdvgbcbvbvdb.</p>
</div> -->
</div>
</div>
</body>
</html>