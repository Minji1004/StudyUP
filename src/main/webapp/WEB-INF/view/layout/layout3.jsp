<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
   String cp = request.getContextPath();
// String path = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+cp;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spring</title>

    <link rel="stylesheet" href="<%=cp%>/resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=cp%>/resource/css/flexslider.css">
    <link rel="stylesheet" href="<%=cp%>/resource/css/jquery.fancybox.css">
    <link rel="stylesheet" href="<%=cp%>/resource/css/main.css">
    <link rel="stylesheet" href="<%=cp%>/resource/css/responsive.css">
    <link rel="stylesheet" href="<%=cp%>/resource/css/animate.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<link rel="stylesheet" href="<%=cp%>/resource/jquery/css/smoothness/jquery-ui.min.css" type="text/css">

<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery-1.12.4.min.js"></script>

<script type="text/javascript" src="<%=cp%>/resource/js/util-jquery.js"></script>
<script type="text/javascript" src="<%=cp%>/resource/js/util.js"></script>


<style type="text/css">
#logo{
	width: 200px; 
	height: 70; 
	position: relative; 
	left: 0; 
	top:20px; 
	color: #2984ff; 
	filter: mask(color=red) shadow(direction=135) chroma(color=red);
	font-style: italic; 
	font-family: arial black; 
	font-size: 30px; 
	font-weight: bold;
}

</style>


</head>

<body>

<div class="header">
    <tiles:insertAttribute name="header"/>
</div>
	
<div class="container">
    <tiles:insertAttribute name="body"/>
</div>

<div class="footer">
    <tiles:insertAttribute name="footer"/>
</div>

<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=cp%>/resource/jquery/js/jquery.ui.datepicker-ko.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<%=cp%>/resource/js/jquery.min.js"><\/script>')</script>
    <script src="<%=cp%>/resource/js/bootstrap.min.js"></script>
    <script src="<%=cp%>/resource/js/jquery.flexslider-min.js"></script>
    <script src="<%=cp%>/resource/js/jquery.fancybox.pack.js"></script>
    <script src="<%=cp%>/resource/js/jquery.waypoints.min.js"></script>
    <script src="<%=cp%>/resource/js/retina.min.js"></script>
    <script src="<%=cp%>/resource/js/modernizr.js"></script>
    <script src="<%=cp%>/resource/js/main.js"></script>
    
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
       
        ga('create', 'UA-XXXX-X');
        ga('send', 'pageview');
    </script>

</body>
</html>