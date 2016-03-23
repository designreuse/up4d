<%@page import="ch.up4dsoftware.configuration.AppConfig"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>${title}</title>
<link href="<c:url value='/resources/assets/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/assets/css/bootstrap-theme.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/font-awesome.min.css'/>"
	rel="stylesheet">
<!-- Toastr style -->
<link
	href="<c:url value='/resources/assets/css/plugins/toastr/toastr.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/animate.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/assets/css/dataTables.bootstrap.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/bootstrap-select.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/assets/css/themes/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/datepicker.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/alertify.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/resources/assets/css/style.css'/>"
	rel="stylesheet">
<script src="<c:url value='/resources/assets/js/jquery-1.11.3.min.js'/>"></script>
<script src="<c:url value='/resources/assets/js/bootstrap-select.js'/>"></script>
<script
	src="<c:url value='/resources/assets/js/bootstrap-datepicker.js'/>"></script>
<script src="<c:url value='/resources/assets/js/jquery.dataTables.js'/>"></script>
<script
	src="<c:url value='/resources/assets/js/dataTables.bootstrap.js'/>"></script>
<script src="<c:url value='/resources/assets/js/jquery.validate.js'/>"></script>
<script src="<c:url value='/resources/assets/js/moment.js'/>"></script>
<script src="<c:url value='/resources/assets/js/alertify.min.js'/>"></script>
<!--  <script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script> -->
<script>
	var contextPath = '${pageContext.request.contextPath}';
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token);
	});
</script>
</head>
<body>
	<span id="prodName" class="hide"><%=AppConfig.PRODNAME%></span>
	<div id="wrapper">
		<tiles:insertAttribute name="navigation" />
		<div id="page-wrapper" class="gray-bg">
			<tiles:insertAttribute name="header" />

			<div class="wrapper wrapper-content  animated fadeInRight blog">
				<tiles:insertAttribute name="body" />
			</div>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<!-- Mainly scripts -->
	<script src="<c:url value='/resources/assets/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/js/plugins/metisMenu/jquery.metisMenu.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/js/plugins/slimscroll/jquery.slimscroll.min.js'/>"></script>
	<!-- Custom and plugin javascript -->
	<script src="<c:url value='/resources/assets/js/inspinia.js'/>"></script>
	<script
		src="<c:url value='/resources/assets/js/plugins/pace/pace.min.js'/>"></script>
</body>
</html>
