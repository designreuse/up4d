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
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Service</title>
  <link href="<c:url value='/resources/assets/css/bootstrap.min.css'/>" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value='/resources/assets/css/login2.css'/>">
  <script src="<c:url value='/resources/assets/js/jquery-1.11.3.min.js'/>"></script>
  <script src="<c:url value='/resources/assets/js/jquery.validate.js'/>"></script>
  <script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <script>
  		contextPath = '${pageContext.request.contextPath}';
  </script>
</head>
<body>
	<span id="prodName" class="hide"><%=AppConfig.PRODNAME%></span>
	<span id="clientIp" class="hide"></span>
	<span id="userBrowser" class="hide"></span>
  <section class="container">
    <div class="login">
      <h1>Up4d Service</h1>
      <form id="loginForm" method="post" action="<c:url value='/j_spring_security_check'/>">
        <p><input type="text" name="j_username" value="" placeholder="Username or Email"></p>
        <p><input type="password" name="j_password" value="" placeholder="Password"></p>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="error" style="color: red">
        </p>
        <p class="submit"><button class="btn btn-sm btn-primary" type="button" id="loginBtn">Login</button></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="<c:url value='<%=UrlConfig.FORGOT_PASSWORD_URL%>'/>">Click here to reset it</a>.</p>
    </div>
  </section>
  <script src="<c:url value='/resources/assets/js/page/console.js'/>"></script>
</body>
</html>
