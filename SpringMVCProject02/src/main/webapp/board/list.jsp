<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
	
	.row{
		margin: 0px auto;
		width: 800px;	
	}
	
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center">자유게시판</h1>
		<div class="row">
			<table class="table">
				<tr>
					<td>
						<a href="insert.do" class="btn btn-sm btn-danger">새글</a>
					</td>
				</tr>
			</table>
			<table class="table table-hover">
				<tr class="success">
					<th width="10%" class="text-center">번호</th>
					<th width="45%" class="text-center">제목</th>
					<th width="15%" class="text-center">이름</th>
					<th width="20%" class="text-center">작성일</th>
					<th width="10%" class="text-center">조회수</th>
				</tr>
				<c:forEach var="vo" items="${list }">
					<tr>
						<td width="10%" class="text-center">${vo.no }</td>
						<td width="45%" class="text-left">
							<a href="detail.do?no=${vo.no }">${vo.subject }</a>
						</td>
						<td width="15%" class="text-center">${vo.name }</td>
						<td width="20%" class="text-center">
							<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
						</td>
						<td width="10%" class="text-center">${vo.hit }</td>
					</tr>
				</c:forEach>
			</table>
			<table class="table">
				<tr>
					<td class="text-center">
						<a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary">이전</a>
							${curpage } page / ${totalpage } pages
						<a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>