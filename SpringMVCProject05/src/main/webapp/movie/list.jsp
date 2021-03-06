<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 
	JSP			MovieController				DAO
	find.do		@PostMapping("find.do")
				사용자요청값을 받아서 dao연결
					결과값 JSP 전송
					JSP 화면 출력
 -->
<div class="container">
	<div class="row">
		<h1 class="text-center">영화목록</h1>
		<table class="table">
			<tr>
				<td>
					<form method="post" action="find.do">
						Search:<input type="text" name="fd" size="15px" class="input-sm">
						<input type="submit" value="찾기" class="btn btn-sm btn-primary">
					</form>
				</td>
			</tr>
		</table>
		<c:forEach var="vo" items="${list }">
		  <div class="col-md-4">
		    <div class="thumbnail">
		      <a href="detail.do?mno=${vo.mno }">
		        <img src="${vo.poster }" alt="Lights" style="width:100%">
		        <div class="caption">
		          <p>${vo.title }</p>
		        </div>
		      </a>
		    </div>
		  </div>
	  	</c:forEach>
	</div> 
</div> 
<%-- <c:if test="${totalpage eq 1 }"> --%>
	<div class="row text-center">
		<a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary">이전</a>
			${curpage } page / ${totalpage } pages
		<a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
	</div>
<%-- </c:if> --%>
</body>
</html>