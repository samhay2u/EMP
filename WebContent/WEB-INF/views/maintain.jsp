<%@page import="emp.pojo.Employee, emp.CommonServlet"%>
<jsp:include page="header.jsp" />
<%
	String opr = request.getParameter(CommonServlet.OPR), id = "", dob = "", fname = "", lname = "",
			gender = "", hdate = "";

	boolean isEdit = "edit".equals(opr);

	// if the opr html querry parametr up in the url has "opr=edit" representation
	// then do all this below
	if (isEdit) {
		Employee employee = (Employee) request.getAttribute(CommonServlet.EMPLOYEE);

		id = employee.getEmp_No();
		dob = employee.getDob();
		fname = employee.getFirst_name();
		lname = employee.getLast_name();
		gender = employee.getGender();
		hdate = employee.getHire_date();
	}
	/////////////////////////////////////////////////////////////////////////////// BUG
	// because we are not wanting to reuse the cose then we put everything here for
	// the ADD and the edit functions if we call add then it wont have anything the
	/////////////////////////////////////////////////////////////////////////////// "id"
	// because it didnt retrieve anything.. so it will be just blank in this case
	// Medical record Number
	String readonly = isEdit ? "readonly" : "";
%>

<div class="col-sm-4 col-sm-offset-4">
	<h2 align="center">Maintain employee</h2>
	<form method="post" action="/EMP/employees" id="employeeForm">
		<fieldset>
			<div class="form-group">
				<label for="EmployeeNumber" class="control-label">Employee
					Number</label> <input name="EmployeeNumber" type="text" id="EmployeeNumber"
					class="form-control" value="<%=id%>" <%=readonly%> /> <input
					name="opr" type="hidden" id="opr" value="<%=opr%>Submit" />
			</div>
			<div class="form-group">
				<label for="DOB" class="control-label">Date of Birth
					(YYYY-MM-DD)</label> <input name="DOB" type="text" id="DOB"
					class="form-control" value="<%=dob%>" />
				<div class="form-group">
					<label for="FirstName" class="control-label">First Name</label> <input
						name="FirstName" type="text" id="FirstName" class="form-control"
						value="<%=fname%>" />
				</div>
				<div class="form-group">
					<label for="LastName" class="control-label">Last Name</label> <input
						name="LastName" type="text" id="LastName" class="form-control"
						value="<%=lname%>" />
				</div>
			</div>
			<div class="form-group">
				<label for="Gender" class="control-label">Gender</label> <input
					name="Gender" type="text" id="Gender" class="form-control"
					value="<%=gender%>" />
			</div>
			<div class="form-group">
				<label for="HireDate" class="control-label">Hire Date</label> <input
					name="HireDate" type="text" id="HireDate" class="form-control"
					value="<%=hdate%>" />
			</div>
			<div class="form-group text-center">
				<button id="employeeSubmit" name="employeeSubmit" type="submit"
					class="btn btn-primary">Submit</button>
			</div>
		</fieldset>
	</form>
</div>
</div>
</div>
</div>
</section>
</body>
</html>
