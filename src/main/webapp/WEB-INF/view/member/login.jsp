<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<style type="text/css">
.lbl {
   position:absolute; 
   margin-left:15px; margin-top: 17px;
   color: #999999; font-size: 11pt;
}
.loginTF {
  width: 360px; height: 50px;
  padding: 5px;
  padding-left: 15px;
  border:1px solid #999999;
  color:#333333;
  margin-top:5px; margin-bottom:5px;
  font-size:14px;
  border-radius:4px;
}
.body-container {
    clear:both;
    box-sizing: border-box;  /* padding과 border는 크기에 포함되지 않음 */
    margin: 0px auto 15px;
    min-height: 500px;
    padding-top: 20px;
}
.btnConfirm {
    font-size: 15px; 
    border:none;
    color:#ffffff;
    background:#507CD1;
    width: 360px;
    height: 50px;
    line-height: 50px;
    border-radius:4px;
}
.radioUser{
	font: 10px;
}
</style>
<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript">
function bgLabel(ob, id) {
    if(!ob.value) {
	    document.getElementById(id).style.display="";
    } else {
	    document.getElementById(id).style.display="none";
    }
}

function sendLogin() {
    var f = document.loginForm;

	var str = f.userId.value;
    if(!str) {
        alert("아이디를 입력하세요. ");
        f.userId.focus();
        return;
    }

    str = f.userPwd.value;
    if(!str) {
        alert("패스워드를 입력하세요. ");
        f.userPwd.focus();
        return;
    }

    f.action = "<%=cp%>/member/login";
    f.submit();
}
/* 
$(function(){
	$("input:text[name=blicenseNum]").closest("tr").hide();
	
	$("body").on("click", ".radioUser", function(){

		var radiocheck = $("input:radio[name='userKind']:checked").val();
		if(radiocheck == "user"){
			$("input:text[name=blicenseNum]").closest("tr").hide();
		}else{
			$("input:text[name=blicenseNum]").closest("tr").show();
		}
		
		
		var $userKind = $("input[name=userKind]").val()
	 	if($userKind =="user" || $userKind == "admin"){
			$("#blicenseNum").closest("tr").hide();
		}else if($userKind == "studyroom" || $userKind == "teacher"){
			$("#blicenseNum").closest("tr").show();
		}  
	});
});

 */
</script>

<div class="body-container">
    <div style="margin: 0px auto; padding-top:90px; width:360px;">
    	<div style="text-align: center;">
        	<span style="font-weight: bold; font-size:27px; color: #424951;">회원 로그인</span>
        </div>
        
		<form name="loginForm" method="post" action="">
		  <table style="margin: 15px auto; width: 360px; border-spacing: 0px;">
		  <tr align="center" height="60"> 
		      <td> 
                 <label for="userId" id="lblUserId" class="lbl" >아이디</label>
		        <input type="text" name="userId" id="userId" class="loginTF" maxlength="15"
		                   tabindex="1"
                           onfocus="document.getElementById('lblUserId').style.display='none';"
                           onblur="bgLabel(this, 'lblUserId');">
		      </td>
		  </tr>

		  <tr align="center" height="60"> 
		      <td>
		        <label for="userPwd" id="lblUserPwd" class="lbl" >패스워드</label>
		        <input type="password" name="userPwd" id="userPwd" class="loginTF" maxlength="20" 
		                   tabindex="2"
                           onfocus="document.getElementById('lblUserPwd').style.display='none';"
                           onblur="bgLabel(this, 'lblUserPwd');">
		      </td>
		  </tr>

		  <tr align="center" height="65" > 
		      <td>
		        <button type="button" onclick="sendLogin();" class="btnConfirm">로그인</button>
		      </td>
		  </tr>
		  


		  

		  <tr align="center" height="45">
		      <td>
		       		<a href="<%=cp%>/">아이디찾기</a>&nbsp;&nbsp;&nbsp;
		       		<a href="<%=cp%>/">패스워드찾기</a>&nbsp;&nbsp;&nbsp;
		       		<a href="<%=cp%>/member/member">회원가입</a>
		      </td>
		  </tr>
		  
		  <tr align="center" height="40" >
		    	<td><span style="color: blue;">${message}</span></td>
		  </tr>
		  
		  </table>
		</form>           
	</div>
</div>