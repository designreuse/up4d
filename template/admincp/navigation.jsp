<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page
	import="org.springframework.security.core.userdetails.UserDetails"%>
<%@page
	import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu">
			<li class="nav-header">
				<div class="dropdown profile-element">
					<span> <img alt="image" class="img-circle"
						src="<c:url value='/resources/assets/img/photo/${currentUser.photo}'/>" />
					</span> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
						class="clear"> <span class="block m-t-xs"> <strong
								class="font-bold">${username}</strong>
						</span>
					</span>
					</a>
					<ul class="dropdown-menu animated fadeInRight m-t-xs">
						<li><a href="<c:url value='/admin/profile/'/>">Profile</a></li>
						<li><a href="<c:url value='/admin/profile/change-password'/>">Change
								Password</a></li>
						<li><a href="<c:url value='/admin/profile/history'/>">History</a></li>		
						<li class="divider"></li>
						<li><a href="<c:url value='/logout'/>">Exit</a></li>
					</ul>
				</div>
				<div class="logo-element">IN+</div>
			</li>
			<li class="suply"><a href="index.html"><i
					class="fa fa-th-large"></i> <span class="nav-label">Manage
						User</span> <span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li><a href="<c:url value='/admin/user'/>">Manage Users</a></li>
					<li><a href="<c:url value='/admin/role'/>">Manage Roles</a></li>
				</ul>
			</li>
			<li class="suply"><a href="index.html"><i
					class="fa fa-th-large"></i> <span class="nav-label">Modules</span> <span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li><a href="<c:url value='/admin/language'/>">Languages</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<script
		src="<c:url value='/resources/assets/js/template/admincp/navigation.js'/>"></script>
</nav>