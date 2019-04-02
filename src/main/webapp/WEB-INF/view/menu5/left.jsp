<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>

<script type="text/javascript">
$(function(){
	var idx="${subMenu}";
	if(! idx) idx=1;
	var subMenu=$(".list-group-item")[idx];
	$(subMenu).addClass("active");
});
</script>

<div class="list-group">
       <div class="list-group-item lefthead"><i></i> 마이페이지</div>
       <a href="<%=cp%>/mypage/info" class="list-group-item">정보확인</a>
       <a href="#" class="list-group-item">다이어리</a>
       <a href="#" class="list-group-item">일정관리</a>
       <a href="#" class="list-group-item">친구관리</a>
       <a href="#" class="list-group-item">쪽지</a>
       <a href="<%=cp%>/member/pwd" class="list-group-item">정보수정</a>
    <c:if test="${sessionScope.member.userId!='admin' }">
	    <a href="<%=cp%>/member/pwd?dropout" class="list-group-item">회원탈퇴</a>
	</c:if>        
</div>
