<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div id="userControls" class="container">
	<div class="row-fluid">
		<div class="span2 language pull-left">
			<div class="language-object">

				<span class="Language selected" title="English (United States)"><a
					href="<c:url value='?locale=en'/>"><img
						src="<c:url value='/resources/assets/img/lang/en-US.gif'/>" alt="en-US"></a></span><span
					class="Language selected" title="Deutsch (Deutschland)"><a
					href="<c:url value='?locale=de'/>"><img
					src="<c:url value='/resources/assets/img/lang/de-DE.gif'/>" alt="de-DE"></a></span>
			</div>
		</div>
		<div id="search" class="span3 pull-right">
			<span id="dnn_dnnSearch_ClassicSearch"> <span
				class="searchInputContainer"
				data-moreresults="Weitere Ergebnisse anzeigen"
				data-noresult="keine Ergebnisse gefunden"> <input
					name="dnn$dnnSearch$txtSearch" type="text" maxlength="255"
					size="20" id="dnn_dnnSearch_txtSearch" class="NormalTextBox"
					autocomplete="off" placeholder="<spring:message code="start.search"/>"> <a
					class="dnnSearchBoxClearText"></a>
			</span> <a id="dnn_dnnSearch_cmdSearch" class="SearchButton"
				href="javascript:__doPostBack('dnn$dnnSearch$cmdSearch','')"><spring:message code="start.search"/></a>
			</span>
		</div>
		<div id="login" class="span5 pull-right">
				<div id="dnn_dnnLogin_loginGroup" class="loginGroup">
					<a id="dnn_dnnLogin_enhancedLoginLink" title="<spring:message code="start.login"/>"
						class="LoginLink" rel="nofollow"
						href='<c:url value='/console' />'><spring:message code="start.login"/></a>
				</div>
				<div id="dnn_dnnUser_registerGroup" class="registerGroup">
					<ul class="buttonGroup">
						<li class="userDisplayName"><a
							id="dnn_dnnUser_enhancedRegisterLink" title="<spring:message code="start.register"/>"
							rel="nofollow"
							href="http://www.up4distribution.ch/de-de/Register?returnurl=http%3a%2f%2fwww.up4distribution.ch%2fde-de%2fup4d-Software"><spring:message code="start.register"/></a></li>

					</ul>
				</div>
		</div>
	</div>
</div>
<div id="siteHeadouter">
	<div id="siteHeadinner" class="container">
		<div class="navbar">
			<div class="navbar-inner">
				<span class="brand visible-desktop"> <a
					id="dnn_dnnLOGO_hypLogo" title="up4distribution"
					href="http://www.up4distribution.ch/de-de/"><img
						id="dnn_dnnLOGO_imgLogo"
						src="<c:url value='/resources/assets/img/temp/up4d 260_130.png'/>"
						alt="up4distribution"></a>
				</span>
				<span class="hide brand hidden-desktop"> <a
					id="dnn_dnnLOGOmobi_hypLogo" title="up4distribution"
					href="http://www.up4distribution.ch/de-de/"><img
						id="dnn_dnnLOGOmobi_imgLogo"
						src="<c:url value='/resources/assets/img/temp/up4d 260_130.png'/>"
						alt="up4distribution"></a>
				</span> 
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"><spring:message code="start.menu"/></a>
				<div id="navdttg" class="nav-collapse collapse pull-right">
					<ul class="nav nav-pills">

						<li class=""><a href="http://www.up4distribution.ch/de-de/"><spring:message code="start.start"/></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>