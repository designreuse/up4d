<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="body">
		<div class="row">
			<div class="col-lg-4">
				<div class="ibox">
					<div class="ibox-content">
						<a href="<c:url value='${titleUrl}'/>" class="btn-link">
							<h2>${title}</h2>
						</a>
						<p>
							Number Of All Report:<span style="">${allTaskCount}</span>
						</p>
						<p>
							Number Of Complete Report:<span style="">${completedReportCount}</span>
						</p>
						<c:forEach var="report" items="${listAcademicYear}">
							<p>${report.academicYear} - ${report.numReport} reports.
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<script src="<c:url value='/resources/assets/js/page/dashboard.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>