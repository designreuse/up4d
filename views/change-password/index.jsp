<%@page import="ch.up4dsoftware.configuration.UrlConfig"%>
<%@page import="ch.up4dsoftware.configuration.AppConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>${title}</title>
<link href="<c:url value='/resources/assets/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value='/resources/assets/css/login2.css'/>">
<script src="<c:url value='/resources/assets/js/jquery-1.11.3.min.js'/>"></script>
<script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>
<script src="<c:url value='/resources/assets/js/jquery.validate.js'/>"></script>
<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
	<span id="prodName" class="hide"><%= AppConfig.PRODNAME%></span>
	<span id="clientIp" class="hide"></span>
	<span id="userBrowser" class="hide"></span>
	<section class="container">
		<div class="forgot">
			<h1>${title}</h1>
			<c:choose>
				<c:when test="${message != ''}">
					<p style="color: red">${message}</p>
				</c:when>
				<c:otherwise>
					<form id="changePassForm" onsubmit="alertMe();"
						action='<c:url value="<%=UrlConfig.CHANGEPASSWORD_PAGE_URL%>" />'
						method="post">
						<input type="text" class="hide form-control" name="email"
							value="${email}" placeholder="Password">
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="Password">
						</div>
						<div class="form-group">
							<label for="confirmPassword">Confirm Password</label> <input
								type="password" class="form-control" name="confirmPassword"
								placeholder="Confirm Password">
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="submit" class="btn btn-primary">Change
							password</button>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
		<script
			src="<c:url value='/resources/assets/js/page/change-password.js'/>"></script>
	</section>
</body>
</html>
