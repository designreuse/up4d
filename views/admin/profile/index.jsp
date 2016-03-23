<%@page import="ch.up4dsoftware.configuration.AppConfig"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="adminTemplate">
	<tiles:putAttribute name="body">
		<div class="row">
			<div class="col-lg-6">
				<div class="ibox">
					<div class="ibox-content">
						<a href="<c:url value='${titleUrl}'/>" class="btn-link">
							<h2>${title}</h2>
						</a>
						<div class="form-horizontal">
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-10">
									<label for="username" class="col-sm-5 control-label">${currentUser.username}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="fullname" class="col-sm-2 control-label">Full name</label>
								<div class="col-sm-10">
									<label for="fullname" class="col-sm-5 control-label">${currentUser.firstName}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="fullname" class="col-sm-2 control-label">Last name</label>
								<div class="col-sm-10">
									<label for="fullname" class="col-sm-5 control-label">${currentUser.lastName}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="birthDate" class="col-sm-2 control-label">Birth Date</label>
								<div class="col-sm-10">
									<label for="birthDate" class="col-sm-5 control-label">${currentUser.birthDay}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="col-sm-2 control-label">Gender</label>
								<div class="col-sm-10">
									<label for="gender" class="col-sm-5 control-label">
										<c:choose>
											<c:when test="${currentUser.gender == 1}">
												Male
											</c:when>
											<c:otherwise>
												Female
											</c:otherwise>
										</c:choose>
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="address" class="col-sm-2 control-label">Address</label>
								<div class="col-sm-10">
									<label for="address" class="col-sm-5 control-label">${currentUser.address}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">Phone</label>
								<div class="col-sm-10">
									<label for="phone" class="col-sm-5 control-label">${currentUser.phone}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">Mobile</label>
								<div class="col-sm-10">
									<label for="phone" class="col-sm-5 control-label">${currentUser.mobile}</label>
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="col-sm-2 control-label">Status</label>
								<div class="col-sm-10">
									<label for="gender" class="col-sm-5 control-label">
										<c:choose>
											<c:when test="${currentUser.status == 1}">
												Active
											</c:when>
											<c:otherwise>
												None
											</c:otherwise>
										</c:choose>
									</label>
								</div>
							</div>
							<div class="form-group">
    							<div class="col-sm-2">
      								<button type="button" onclick="displayChangeInfo();" class="btn btn-sm btn btn-primary">Change Infomation</button>
    							</div>
  							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="changeInfo" class="col-lg-6">
				<div class="ibox">
					<div class="ibox-content">
						<a class="btn-link">
							<h2>Change User Infomation</h2>
						</a>
						<form id="changeInfoForm" class="form-horizontal" action="<c:url value='/admin/profile/updateProfile'/>" method="POST">
							<input type="text" value="${currentUser.id}" class="form-control hide" id="id" name="id" >
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">Username</label>
								<div class="col-sm-10">
									<input type="text" disabled="disabled" value="${currentUser.username}" class="form-control" id="username" name="username" >
								</div>
							</div>
							<div class="form-group">
								<label for="fullname" class="col-sm-2 control-label">First Name</label>
								<div class="col-sm-10">
									<input type="text" value="${currentUser.firstName}" class="form-control" id="firstName" name="firstName" >
								</div>
							</div>
							<div class="form-group">
								<label for="fullname" class="col-sm-2 control-label">Last Name</label>
								<div class="col-sm-10">
									<input type="text" value="${currentUser.lastName}" class="form-control" id="lastName" name="lastName" >
								</div>
							</div>
							<div class="form-group">
								<label for="birthDate" class="col-sm-2 control-label">Birth Day</label>
								<div class="col-sm-10">
									<input type="text" value="${currentUser.birthDay}" class="form-control" id="birthdate" name="birthdate" data-date-format="dd/mm/yyyy" >
								</div>
							</div>
							<div class="form-group">
								<label for="gender" class="col-sm-2 control-label">Gender</label>
								<div class="col-sm-10">
									<select id="genderBox" class="combobox form-control" data-style="btn-white" name="gender">
										<option value="true">Male</option>
										<option value="false">Female</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="address" class="col-sm-2 control-label">Address</label>
								<div class="col-sm-10">
									<input type="text" value="${currentUser.address}" class="form-control" id="address" name="address" >
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">Phone</label>
								<div class="col-sm-10">
									<input type="number" value="${currentUser.phone}" class="form-control" id="phone" name="phone" >
								</div>
							</div>
							<div class="form-group">
								<label for="phone" class="col-sm-2 control-label">Mobile</label>
								<div class="col-sm-10">
									<input type="number" value="${currentUser.mobile}" class="form-control" id="phone" name="mobile" >
								</div>
							</div>
							<div class="form-group">
								<label for="state" class="col-sm-2 control-label">State</label>
								<div class="col-sm-10">
									<select id="statusBox" class="combobox form-control" data-style="btn-white" name="gender">
										<option value="true">Male</option>
										<option value="false">Female</option>
									</select>
								</div>
							</div>
							<div class="form-group">
    							<div class="col-sm-5">
      								<button type="submit" class="btn btn-sm btn btn-primary">Change Infomation</button>
    							</div>
  							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="<c:url value='/resources/assets/js/page/profile.js'/>"></script>
	</tiles:putAttribute>
</tiles:insertDefinition>