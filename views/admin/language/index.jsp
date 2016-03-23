<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="body">
		<div class="row">
				<div class="ibox">
					<div class="ibox-content">
						<a href="<c:url value='${titleUrl}'/>" class="btn-link">
							<h2>${title}</h2>
						</a>
						<button data-toggle="modal" data-target="#newLanguageItem"class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>&nbsp; Create</button>
						<div class="table-responsive">
							<table id="tblLanguage"
								class="table table-bordered table-hover table-striped">
							</table>
						</div>
					</div>
				</div>
		</div>

		<!-- Add New Language Form -->
		<div class="modal fade" id="newLanguageItem" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add Language</h4>
					</div>
					<form id="newLanguageForm" class="form-horizontal">
						<div class="modal-body">
							<div class="form-group">
								<label for="name" class="col-sm-3 control-label">Locale</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="locale">
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-sm-3 control-label">Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="langName">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" onclick="createLanguage();"
								class="btn btn-primary">Create</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- Update Language Form -->
		<div class="modal fade" id="updateLanguageItem" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Change Language
							Info</h4>
					</div>
					<form id="updateLanguageForm" class="form-horizontal" method="POST">
						<div class="modal-body">
							<input type="text" class="form-control hide" name="langId">
							<div class="form-group">
								<label for="name" class="col-sm-3 control-label">Locale</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="locale">
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-sm-3 control-label">Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="langName">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" onclick="updateLanguage();"
								class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="<c:url value='/resources/assets/js/page/language.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>