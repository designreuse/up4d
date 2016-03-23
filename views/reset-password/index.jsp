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
  <title>${title}</title>
  <link rel="stylesheet" href="<c:url value='/resources/assets/css/login2.css'/>">
  <script src="<c:url value='/resources/assets/js/jquery-1.11.3.min.js'/>"></script>
  <script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
	<span id="prodName" class="hide"><%=AppConfig.PRODNAME%></span>
	<span id="clientIp" class="hide"></span>
	<span id="userBrowser" class="hide"></span>
  <section class="container">
    <div class="forgot">
      <h1>${title}</h1>
      <form method="GET" action="<c:url value='${titleUrl}'/>">
      	<p>We've sent an email to <span style="font-weight: bold;" class='email'>${email}</span>. Click the link in the email to reset your password.</p>
      	<p>If you don't see the email, check other places it might be, like your junk, spam, social, or other folders.</p>
      </form>
      <a href="<c:url value="<%=UrlConfig.HOME_URL%>"/>" class="btn btn-default">Back</a>
    </div>
  </section>
  <script type="text/javascript">
  	var email = $(".email").html();
  	var newNick = '';
  	var nick= email.split("@")[0];
  	var domain = email.split("@")[1];
  	if(nick.length > 4)
  	{
  		for(var i = 0;i<nick.length;i++){
  			if(i>1){
  				newNick+= '*';
  			}
  			else{
  				newNick+=nick[i];
  			}	
  		}
  	}
  	else{
  		for(var i = 0;i<nick.length;i++){
  			if(i>0){
  				newNick+= '*';
  			}
  			else{
  				newNick+=nick[i];
  			}	
  		}
  	}
  	newNick+= "@"+domain;
  	var email = $(".email").html(newNick);
  	
  	function goBack(){
  		window.history.back();
  	}
  </script>
</body>
</html>
