<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
<style type="text/css">


</style>
</head>

<body>
	<div id="Header"><tiles:insertAttribute name="Header" /></div>
    <div id="content"><tiles:insertAttribute name="content" /></div>  
    <div id="footer"><tiles:insertAttribute name="footer" /></div>


</body>
</html>