<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><%-- ${title} --%>Landing Page</title>
<!-- Css File -->
<link href="<c:url value='/resources/assets/vendors/tether/dist/css/tether.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/vendors/bootstrap/dist/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/vendors/animatecss/index.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/vendors/fontawesome/css/font-awesome.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/vendors/normalize-css/normalize.css'/>"
	rel="stylesheet">
<link rel="stylesheet/less" type="text/css" href="<c:url value='/resources/assets/less/page/landing/landing.less'/>">
<!-- Javascript file -->
<script src="<c:url value='/resources/assets/vendors/jquery/dist/jquery.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendors/tether/dist/js/tether.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendors/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendors/less/dist/less.min.js'/>"></script>

<!-- Use less -->
</head>
<body>
	<div id="wrapper">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>