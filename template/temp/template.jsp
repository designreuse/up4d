<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/resources/assets/css/bootstrap1.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/temppage/default.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/temppage/portal.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/temppage/skin.css'/>"
	rel="stylesheet">
<title>${title}</title>
</head>
<body id="Body">
	<div id="siteWrapper">
		<tiles:insertAttribute name="header" />
		<div id="contentWrapper">
			<div class="container">
				<div class="row-fluid">
					<div id="Breadcrumb" class="span12">
						<span id="dnn_dnnBreadcrumb_lblBreadCrumb"></span>
					</div>
				</div>
				<div class="row-fluid">
					<div id="dnn_ContentPane" class="contentPane DNNEmptyPane"></div>
				</div>
				<tiles:insertAttribute name="body" />
				<tiles:insertAttribute name="footer" />
			</div>
		</div>
	</div>
</body>
</html>