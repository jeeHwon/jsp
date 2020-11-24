<%@page import="com.web.board.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.web.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	System.out.println("/borad/list.jsp");
%>
<!-- DB에서 데이터를 가져오는 자바프로그램 작성 -->
<%
//여기가 자바프로그램
//DAO를 생성하고 호출해서 사용한다
BoardDAO dao = new BoardDAO();
List<BoardDTO> list = dao.list();

//java와 jsp에서 공통으로 사용하는 데이터 영역에 해당되는 객체 - request를 주로 사용
request.setAttribute("list", list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
<!-- 라이브러리 등록 - jQuery, Bootstrap : CDN방식 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
.dataRow:hover {
	/* RGB 3자리 : R자리에 0~15 색상을 16단계로 나눈다. 따라서 16*16*16색상   */
	/* RGB 6자리 : R자리에 0~255 색상을 256단계로 나눈다. 따라서 256*256*256색상   */
	background: crimson;
}
</style>

<script type="text/javascript">
$(function(){	//onready- html - body 부분의 내용이 다 로딩되면 동작되도록 한다
	// 데이터 한줄 클릭하면 글보기로 이동되는 이벤트 처리
	$(".dataRow").click(function(){
		//location.href = "view.jsp";
		location = "view.jsp"
	})
})
</script>
</head>
<body>
	<div class="container">
		<h1>게시판 리스트</h1>
		${list}
		<table class="table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<tr class="dataRow">
				<td>10</td>
				<td>JSP란?</td>
				<td>강소라</td>
				<td>2020.11.20</td>
				<td>5</td>
			</tr>
			<tr class="dataRow">
				<td>11</td>
				<td>빅데이터란??</td>
				<td>신민아</td>
				<td>2020.11.18</td>
				<td>8</td>
			</tr>
			<tr>
				<td colspan="5"><a href="writeForm.jsp" class="btn btn-default">글쓰기</a>
				</td>
			</tr>

		</table>
		<a href="view.jsp">자바란?</a>

	</div>
</body>
</html>
