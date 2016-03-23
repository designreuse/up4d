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
						<button data-toggle="modal" data-target="#newItem"class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>&nbsp; Create</button>
						<div class="table-responsive">
							<table id="tblUser"
								class="table table-bordered table-hover table-striped">
							</table>
						</div>
					</div>
				</div>
		</div>
		<div class="modal fade" id="newItem" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Add User</h4>
					</div>
					<form id="newItemForm" class="form-horizontal" >
					<div class="modal-body">
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Username</label>
							<div class="col-sm-9">
							<input type="text" class="form-control" name="username" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="password form-control" name="password" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Confirm password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="confirmPassword" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">First Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="firstName" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Last Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="lastName" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email" >
							</div>
						</div>
						<!-- <div class="form-group">
							<label for="name" class="col-sm-3 control-label">Avatar</label>
							<div class="col-sm-9">
								<input type="file" class="form-control" name="avatar" >
							</div>
						</div> -->
						<div class="form-group">
							<label for="role" class="col-sm-3 control-label">Role</label>
							<div class="col-sm-9">
								<select id="roleBox" name="roleBox" class="form-control combobox" data-style="btn-white">
									<c:forEach var="role" items="${listRoles}">
										<option value="${role.id}">${role.name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="insertItem();" class="btn btn-primary">Create</button>
					</div>
					</form>
				</div>
			</div>
		</div>
		<div class="modal fade" id="updateItem" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Change Info</h4>
					</div>
					<form id="updateItemForm" class="form-horizontal" method="POST">
					<div class="modal-body">
								<input type="text" class="form-control hide" name="userId" >
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Username</label>
							<div class="col-sm-9">
							<input type="text" class="form-control" name="username" disabled>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">First Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="firstName" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Last Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="lastName" >
							</div>
						</div>
						<!-- <div class="form-group">
							<label for="name" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email" >
							</div>
						</div> -->
						<!-- <div class="form-group">
							<label for="name" class="col-sm-3 control-label">Avatar</label>
							<div class="col-sm-9">
								<input type="file" class="form-control" name="avatar" >
							</div>
						</div> -->
						<div class="form-group">
							<label for="role" class="col-sm-3 control-label">Role</label>
							<div class="col-sm-9">
								<select id="roleBox" name="roleBox" class="form-control combobox" data-style="btn-white">
									<c:forEach var="role" items="${listRoles}">
										<option value="${role.id}">${role.name}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="changeInfo();" class="btn btn-primary">Update</button>
					</div>
					</form>
				</div>
			</div>
		</div>
		<!-- Change password modal -->
		<div class="modal fade" id="changeModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Change Password</h4>
					</div>
					<form id="changeModalForm" class="form-horizontal" action="<c:url value='/admin/user/new'/>" method="POST">
					<input type="text" class="userId form-control hide" name="userId" >
					<div class="modal-body">
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="password form-control" name="password" >
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="col-sm-3 control-label">Confirm Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="confirmPassword" >
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="changePassProcess();" class="btn btn-primary">Change password</button>
					</div>
					</form>
				</div>
			</div>
		</div>
		<script src="<c:url value='/resources/assets/js/page/user.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>