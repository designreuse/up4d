<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div id="header-wraper">
	<div id="header">
		<div class="row">
			<div class='chooseLanguage'></div>
			<a class='middle registerPage' href="#"><span
				class='registerText'><spring:message code="landing.register" /></span></a>
		</div>
		<div id="navigation" class="row">
			<a id="logo" href="http://up4distribution.info"> <img
				alt="up4distribution"
				src="<c:url value='/resources/assets/images/landing/img-up4D-logo.jpg'/>">
			</a>
			<div id="horizontal-menu">
				<div class="dropdown">
					<button class="spacing-left button button-green"><spring:message code="landing.go.to.my.account" /></button>
				</div>
				<div class="dropdown">
					<div class="parentBtn"><spring:message code="landing.data.protection" /></div>
					<div class="dropdown-content">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown">
					<div class="parentBtn"><spring:message code="landing.collaboration" /></div>
					<div class="dropdown-content">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown">
					<div class="parentBtn"><spring:message code="landing.our.credo" /></div>
					<div class="dropdown-content">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown">
					<div class="parentBtn"><spring:message code="landing.our.visions" /></div>
					<div class="dropdown-content">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown">
					<div class="parentBtn"><spring:message code="landing.your.oppotunities" /></div>
					<div class="dropdown-content">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
