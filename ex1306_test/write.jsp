<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#btn{
		width:150px;
		height:40px;
		border:1px solid #f15657;
		background:#f15657;
		color:white;
	}
</style>
<script>
	function check(my){
		if(my.pwd.value != my.pwd2.value){
			alert('비밀번호가 틀립니다')
			return false
		} else if (my.name.value.length < 2 || my.name.value.length > 5){
			alert("작성자 항목을 입력해 주세요");
			return false
		} else if(my.title.value.length < 2){
			alert("제목은 2자 이상으로 입력해 주세요")
			return false
		} else if(my.content.value.length < 3){
			alert("내용은 3자 이상으로 입력해 주세요")
			return false
		} else if (my.pwd.value.length < 3){
			alert("비밀번호는 3자 이상으로 입력해 주세요")
			return false
		} else{
			return true
		}
	}
	
	function pwd_check(my){
		if(my.pwd.value != my.pwd2.value){
			document.getElementById("msg").innerHTML="<b>비밀번호가 틀립니다</b>"
			document.getElementById("msg").style.color="red"
		}else{
			document.getElementById("msg").innerHTML="<b>비밀번호가 일치합니다</b>"
			document.getElementById("msg").style.color="green"
		}
	}
</script>
</head>
<body>
	<form method="post" action="write_ok.jsp" onsubmit="return check(this)">
		<table width="600" align="center">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"></td>
			</tr>		
			<tr>
				<td>내용</td>
				<td><textarea col="40" rows="5" name="content"></textarea></td>
			</tr>		
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>		
			<tr>
				<td>비밀번호확인</td>
				<td>
					<input type="password" name="pwd2" onkeyup="pwd_check(this.form)"><br>
					<span id="msg"></span>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="저장">
				</td>
			</tr>	
		</table>
	</form>
</body>
</html>