<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="write_ok.jsp">
		<table width="600" align="center">
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title" size="40"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="pwd2"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea cols="40" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="sung" value="0">남자
					<input type="radio" name="sung" value="1">여자
					<input type="radio" name="sung" value="2">선택안함
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<input type="checkbox" name="hobby" value="0">서핑
					<input type="checkbox" name="hobby" value="1">등산
					<input type="checkbox" name="hobby" value="2">영화감상
					<input type="checkbox" name="hobby" value="3">독서
					<input type="checkbox" name="hobby" value="4">헬스
					<input type="checkbox" name="hobby" value="5">자전거
				</td>
			</tr>
			<tr>
				<td>태어난 해</td>
				<td>
					<select name="birth">
						<option value="2020">2020</option>
						<option value="2019">2019</option>
						<option value="2018">2018</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
						<option value="2015">2015</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글쓰기">
				</td>
			</tr>
		
		
		
		</table>
	
	
	</form>

</body>
</html>























