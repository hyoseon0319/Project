<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HEAD>
<SCRIPT language=javascript>
function sendUpdate(){
		document.requestForm.command.value ="updateForm";
		document.requestForm.submit();
}	

function sendDelete(){
		var password = prompt("삭제할 게시물의 비밀번호를 입력하세요");	
		if(password){
			document.requestForm.command.value ="delete";
			document.requestForm.password.value = password;
			document.requestForm.submit();			
		}else{
			return false;
		}
}	
</script>
</HEAD>

				<!-- 수정시 필요한 데이터들을 hidden으로 숨겨놓고 폼 데이터로 보내준다. -->
						<form name="requestForm" method=post action="controller">
							<input type=hidden name=num value="${requestScope.resultContent.num}">
							<input type=hidden name="command" value="">
							<input type=hidden name="star" value="">
							<input type=hidden name="review" value="">
							<input type=hidden name="password" value="">
							<input type=button value="수정하기" onClick="sendUpdate()">
							<input type=button value="삭제하기" onClick="sendDelete()">
						</form>
<hr>
<div align=right><span style="font-size:9pt;">&lt;<a href="c">리스트로 돌아가기</a>&gt;</span></div>
