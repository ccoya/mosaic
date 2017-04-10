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

<!-- code_assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<c:set var="countrys" 	value="${page.countrys}"/>
<c:set var="paging" 	value="${page.paging}"/>
<h1>Country Page List pageNo = ${paging.pageNo}</h1>
	<table class="table table-striped table-bordered table-hover">
		<tr style='background-color: skyblue'>
		<th>No</th>
		<th>ID</th>
		<th>Name</th>
		<th>Pop</th>
		<th>정보수정</th>
		<th>정보삭제</th>
	</tr>

	<c:forEach var="c" items="${countrys}" varStatus="status">
		<tr>
			<td><b>${status.index}</b> </td>
			<td>${c.code} </td>
			<td><a href="/country/item/${c.code}">${c.name}</a> </td>
			<td>${c.population} <br></td>
			<td><a class="btn btn-success" href="/country/modify/${country.id}?pageNo=${page.paging.pageNo}">수정</a></td>
			<td><a class="btn btn-info"    href="/country/unregister/${country.id}?pageNo=${page.paging.pageNo}">삭제</a></td>
		</tr>
	</c:forEach>
</table>
<hr>
<%-- <button onclick="displayBox(event)" class="btn btn-danger animated bounce">
${paging}
</button> --%>
<hr>
<a href="/country/page/${paging.firstPage - 1}">Prev</a>
<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
	<a href="/country/page/${i}">${i}</a>
</c:forEach>
<a href="/country/page/${paging.lastPage + 1}">Next</a>

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>