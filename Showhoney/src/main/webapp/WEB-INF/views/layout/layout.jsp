<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">

#companyHeader {
	width: 100%;
	height: 50px;
	text-align: center;
}

#content {
	float: left; 
	width: 100%;
	background-color: white;
}

#footer {
	width: 100%;
	height: 50px;
	text-align: center;
	clear: both;
}

#content {
	min-height: 600px;
}
</style>
</head>

<body>

<div style="width:100%; height:100%;">
	<div id="Header"><tiles:insertAttribute name="Header" /></div>
    <div id="content"><tiles:insertAttribute name="content" /></div>  
    <div id="footer"><tiles:insertAttribute name="footer" /></div>
</div>

</body>
</html>