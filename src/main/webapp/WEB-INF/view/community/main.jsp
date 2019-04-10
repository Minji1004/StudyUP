<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>

<style>
.nav-tabs a {
  color: #337ab7;	
}
</style>

<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery.form.js"></script>

<script type="text/javascript">
// ajax-Text 처리 함수
function ajaxText(url, query, type, selector) {
	$.ajax({
		type:type
		,url:url
		,data:query
		,success:function(data) {
			$(selector).html(data);	
		}
		,beforeSend : function(jqXHR) {
	        jqXHR.setRequestHeader("AJAX", true);
	    }
	    ,error:function(jqXHR) {
	    	if(jqXHR.status==403) {
	    		location.href="<%=cp%>/member/login";
	    		return;
	    	}
	    	console.log(jqXHR.responseText);
	    }
	});
}

//탭을 선택 한 경우
$(function(){
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		// var active=$(this).attr("aria-controls");
		reloadBoard();
	});
});

$(function(){
	listBoard(1);
});

// 글리스트 및 페이징 처리
function listBoard(page) {
	var active=$("#boardTab").children(".active").children().attr("aria-controls");
	var selector=$("#boardTab").children(".active").children().attr("href");
	
	var url="<%=cp%>/community/"+active+"/list";
	var query="pageNo="+page;
	var search=$('form[name=customerSearchForm]').serialize();
	query=query+"&"+search;
	
	var selector=$("#boardTab").children(".active").children().attr("href");
	ajaxText(url, query, "get", selector);
}

// 검색
function searchList() {
	var f=document.customerSearchForm;
	f.condition.value=$("#condition").val();
	f.keyword.value=$.trim($("#keyword").val());

	listBoard(1);
}

// 새로고침
function reloadBoard() {
	var f=document.customerSearchForm;
	f.condition.value="all";
	f.keyword.value="";
	
	listBoard(1);
}

</script>

<section class="features section">
    <div class="body-title" style="margin-bottom: 20px;">
          <h3><span class="glyphicon glyphicon-envelope"></span> 커뮤니티 </h3>
    </div>

    <div>
	    <div role="tabpanel">
			  <ul id="boardTab" class="nav nav-tabs" role="tablist">
			      <li role="presentation" class="active"><a href="#tabFreeBoard" aria-controls="freeBoard" role="tab" data-toggle="tab">자유 게시판</a></li>
		          <li role="presentation"><a href="#tabQuestion" aria-controls="question" role="tab" data-toggle="tab">질문과 답변</a></li>
		          <li role="presentation"><a href="#tabInquiry" aria-controls="inquiry" role="tab" data-toggle="tab">1:1 문의</a></li>
		          <li role="presentation"><a href="#tabWorry" aria-controls="worry" role="tab" data-toggle="tab">고민 사항</a></li>
			  </ul>
			
			  <div class="tab-content" style="padding: 5px; margin-top: 15px;">
			      <div role="tabpanel" class="tab-pane active" id="tabFreeBoard"></div>
			      <div role="tabpanel" class="tab-pane" id="tabQuestion"></div>
			      <div role="tabpanel" class="tab-pane" id="tabInquiry"></div>
			      <div role="tabpanel" class="tab-pane" id="tabWorry"></div>
			  </div>
	    </div>
    </div>
    
	<form name="customerSearchForm" action="" method="post">
	    <input type="hidden" name="condition" value="all">
	    <input type="hidden" name="keyword" value="">
	</form>
	
</section>
