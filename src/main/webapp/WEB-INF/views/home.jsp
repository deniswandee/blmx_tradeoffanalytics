<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watson - Text to Speech</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<legend class="header">TradeOff Analytics</legend>

	<p class="panel">
		<input type="checkbox" name="preference" value="Apple">Apple<br> 
		<input type="checkbox" name="preference" value="HTC">HTC<br> 
		<input type="checkbox" name="preference" value="Samsung">Samsung<br> 
		<input type="checkbox" name="preference" value="Sony">Sony<br> 
	</p>
	
	<button id="analyze-action">Analyze...</button>
	
	<p id="tradeoff-result" class="panel"></p>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/controller.js"></script>
</body>
</html>