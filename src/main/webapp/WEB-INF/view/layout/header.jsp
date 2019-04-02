<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>

<div class="header-top">
	<div class="header-left">
		    <a href="<%=cp%>/" style="text-decoration: none;">
                <span id="logo">StudyUp</span>
            </a>
	</div>
	<div class="header-right">
		<div style="padding-top: 20px; float: right;">
			<c:if test="${empty sessionScope.member}">
				<a href="<%=cp%>/">로그인</a>
                   		 &nbsp;|&nbsp;
               		 <a href="<%=cp%>/">회원가입</a>
			</c:if>
			<c:if test="${not empty sessionScope.member}">
				<span style="color: blue;">${sessionScope.member.userName}</span>님
               		 	 &nbsp;|&nbsp;
               			 <a href="<%=cp%>/">로그아웃</a>
				<c:if test="${sessionScope.member.userId=='admin'}">
                   			 &nbsp;|&nbsp;
                   		 	<a href="<%=cp%>/admin">관리자</a>
				</c:if>
			</c:if>
		</div>
	</div>

	<div class="menu">
		<ul class="nav">
			<li><a href="">마이페이지</a></li>
			<li><a href="">타이머</a></li>
			<li><a href="">스터디</a></li>
			<li><a href="">스터디룸</a></li>
			<li><a href="">강의</a></li>
			<li><a href="">커뮤니티</a></li>
			<li><a href="">고객센터</a></li>
		</ul>
	</div>
</div>

