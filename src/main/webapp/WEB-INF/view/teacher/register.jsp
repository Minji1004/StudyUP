<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
$(document).ready(function(){  

     $('#register').css('background-image', "url('<%=cp%>/resource/images/blackboard2.jpg')");  

 }); 
</script> 

<section id="register" class="section">

<div id="registerBox" class="container">
<div id="container">
	<h3>선생님 등록하기</h3>
	<hr>

	<form>
	<table>
		<tr><th>이름</th><td>${sessionScope.member.userName}</td></tr>
		<tr><th>전화번호</th><td>tel</td></tr>
	</table>
	<span>회원정보 변경은 마이페이지>회원정보에서 가능합니다.</span>
	<br>
	<hr>
	<table>
		<tr>
			<th>사업자번호</th>
			<td><input type="text" name="blicenseNum"></td>
		</tr>
		<tr>
			<th>매출입금은행</th>
			<td>
				<select name="bank"> 
					<option>은행 선택</option>
					<option>국민은행</option>
					<option>신한은행</option>
					<option>농협은행</option>
					<option>하나은행</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>계좌번호</th>
			<td><input type="text" name="accountNum" class="textBox" placeholder="숫자만 가능합니다."></td></tr>
	</table>
	<hr>

	<input type="radio" name="service" value="true"> 서비스 이용약관을 확인하였으며, 이에 동의합니다.<br>
	<textarea readonly="readonly"> 나랏말싸미</textarea>
	
	<br><br>
	
	<input type="radio" name="privacy" value="true">개인정보 수집 및 이용동의를 확인하였으며, 이에 동의합니다.<br>
	<textarea readonly="readonly"> 듕귁에 달아</textarea><br>
	<div class="buttons">
		<button type="submit" class="btn btn-large">등록하기</button>
		<button type="reset" class="btn btn-large">다시입력</button>
		<button type="button" class="btn btn-large">메인으로</button>
	</div>
	</form>
	</div>
</div>

</section>