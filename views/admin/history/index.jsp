<%@page import="ch.up4dsoftware.configuration.AppConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="body">
		<div class="row">
			<div class="col-lg-10">
				<div class="ibox">
					<div class="ibox-content">
						<a href="<c:url value='${titleUrl}'/>" class="btn-link">
							<h2>${title}</h2>
						</a>
						<!-- Table Items -->
						<div class="table-responsive">
							<table id="tblItems"
								class="table table-bordered table-hover table-striped">
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="<c:url value='/resources/assets/js/page/history.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>