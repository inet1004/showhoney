<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">
#header {
	width: 100%;
	height: 50px;
	text-align: center;
	background-color: aqua;
}

#menu {
	float: right;
	width: 15%;
	background-color: gray;
}

#content {
	float: left;
	width: 85%;
	background-color: lime;
}

#footer {
	width: 100%;
	height: 50px;
	text-align: center;
	background-color: orange;
	clear: both;
}

#menu, #content {
	min-height: 600px;
}
</style>
</head>

<body>

<div style="width:100%; height:100%;">
    <div id="header"><tiles:insertAttribute name="header" /></div>
    <div id="menu"><tiles:insertAttribute name="menu" /></div>
    <div id="content"><tiles:insertAttribute name="content" /></div>  
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
</div>

</body>
</html>