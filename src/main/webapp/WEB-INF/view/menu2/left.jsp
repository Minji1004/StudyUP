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
       <div class="list-group-item lefthead"><i></i> 커뮤니티</div>
       <a href="<%=cp%>/guest/guest" class="list-group-item">방명록</a>
       <a href="<%=cp%>/bbs/list" class="list-group-item">게시판</a>
       <a href="#" class="list-group-item">포토갤러리</a>
       <a href="#" class="list-group-item">자료실</a>
       <a href="#" class="list-group-item">채팅</a>
       <a href="#" class="list-group-item">블로그</a>
</div>
