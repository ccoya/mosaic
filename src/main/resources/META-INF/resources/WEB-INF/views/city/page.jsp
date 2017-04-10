<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>City Page pageNo=${page.paging.pageNo}</h1>
<a href="/city/register" class="btn btn-primary">City 등록</a>
<table class="table table-striped table-bordered table-hover">

<!-- <ol class="list-group"> -->
<!-- </ol> -->
	<tr style='background-color: skyblue'>
		<th>No</th>
		<th>Name</th>
		<th>Pop</th>
		<th>ID</th>
		<th>정보수정</th>
		<th>정보삭제</th>
	</tr>
	<c:forEach var="city" items="${page.citys}">
<!-- <li class="list-group-item-info animated zoomIn"> -->
<!-- </li> -->
			
		<tr class="list-group-item-info">
			<td>${city.id},</td>
			<td><a href="/city/item/${city.id}?pageNo=${page.paging.pageNo}">${city.name},</a></td>
			<td> ${city.population}</td> 
			<td>${city.countryCode}</td>
			<td><a class="btn btn-success" href="/city/modify/${city.id}?pageNo=${page.paging.pageNo}">수정</a></td>
			<td><a class="btn btn-info"    href="/city/unregister/${city.id}?pageNo=${page.paging.pageNo}">삭제</a></td>
	
		</tr>
		
	</c:forEach>

  </table> 
<hr class="animated bounce">

<a href="/city/page/1">First</a>
<a href="/city/page/${page.paging.firstPage - 1}">Prev</a>
<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage }">
	<a href="/city/page/${i}">${i}</a>
</c:forEach>
<a href="/city/page/${page.paging.lastPage + 1}">Next</a>
<a href="/city/page/${page.paging.totalPage}">Last</a>






</body>
</html>

<!-- <div class="container">
  <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Default</td>
        <td>Defaultson</td>
        <td>def@somemail.com</td>
      </tr>      
      <tr class="success">
        <td>Success</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr class="danger">
        <td>Danger</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr class="info">
        <td>Info</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
      <tr class="warning">
        <td>Warning</td>
        <td>Refs</td>
        <td>bo@example.com</td>
      </tr>
      <tr class="active">
        <td>Active</td>
        <td>Activeson</td>
        <td>act@example.com</td>
      </tr> 
    </tbody> -->