﻿<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>

<section class="banner" role="banner">
        <header id="header">
            <div class="header-content clearfix">
                <a class="logo" href="#"><img src="<%=cp%>/resource/images/logo.png" alt=""></a>
                <nav class="navigation" role="navigation">
                    <ul class="primary-nav">
						<li><a href="<%=cp%>/admin/member/list">회원 관리</a></li>
						<li><a href="<%=cp%>/admin">스터디 관리</a></li>
						<li><a href="<%=cp%>/admin">스터디룸 관리</a></li>
						<li><a href="<%=cp%>/admin/report/list">신고관리</a></li>
						<li><a href="<%=cp%>/admin/blacklist/menu">블랙리스트</a></li>						
						<li><a href="">고객센터</a></li>
                    </ul>
                </nav>
                <a href="#" class="nav-toggle">Menu<span></span></a>
                <div class="header-right">

		<div id="login">
			<c:if test="${empty sessionScope.member}">
				<a href="<%=cp%>/member/login">로그인</a>
                   		 &nbsp;|&nbsp;
               		 <a href="<%=cp%>/member/member">회원가입</a>
			</c:if>
			<c:if test="${not empty sessionScope.member}">
				<span style="color: white;">${sessionScope.member.userName}</span>님
               		 	 &nbsp;|&nbsp;
               			 <a href="<%=cp%>/">로그아웃</a>
				<c:if test="${sessionScope.member.userId=='admin'}">
                   			 &nbsp;|&nbsp;
                   		 	<a href="<%=cp%>/admin">관리자</a>
				</c:if>
			</c:if>
		</div>
	</div>
            </div><!-- header content -->

        </header><!-- header -->
        <div class="container">
            <div class="col-md-10 col-md-offset-1">
                <div class="banner-text text-center">
                    
                    
                    
                </div><!-- banner text -->
            </div>
        </div>
	</section>

