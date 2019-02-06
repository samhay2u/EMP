<%@page import="java.util.List,emp.pojo.Employee, emp.CommonServlet"%>
<jsp:include page="header.jsp" />
<figure>
	<table id="employee" class="display" summary="Employee Data" title="Employee Data">
		<thead>
			<tr>
				<th id="maintain"><a href="/EMP/employees?opr=add">Add</a></th>
				<th id="emp_no">Employee Number</th>
				<th id="DOB">Date of Birth</th>
				<th id="FirstName">First Name</th>
				<th id="LastName">Last Name</th>
				<th id="Gender">Gender</th>
				<th id="hire_date ">hire date</th>
				<th id="delete">Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
				List<Employee> list = (List<Employee>) request.getAttribute(CommonServlet.EMPLOYEES);

				int count = list.size();
				for (Employee employee : list) {
					// Get the data from the row
					String id 		= employee.getEmp_No();
					String dob 		= employee.getDob();
					String lname 	= employee.getLast_name();
					String fname 	= employee.getFirst_name();
					String gender 	= employee.getGender();
					String hdate 	= employee.getHire_date();
			%>
			<tr>
				<td headers="maintain"><a
					href="/EMP/employees?opr=edit&emp_no=<%=id%>">Edit</a></td>
				<td headers="emp_no"><%=id%></td>
				<td headers="DOB"><%=dob%></td>
				<td headers="FirstName"><%=fname%></td>
				<td headers="LastName"><%=lname%></td>
				<td headers="Gender"><%=gender%></td>
				<td headers="Hire_Date"><%=hdate%></td>
				<td headers="delete"><a
					href="/EMP/employees?opr=delete&emp_no=<%=id%>">Delete</a></td>
			</tr>
			<%
				count++;
				}
			%>
		</tbody>
		<tfoot>
			<tr>
				<td class="text-center" colspan="8"><b>Total: <%=count%></b></td>
			</tr>
		</tfoot>
	</table>
</figure>
<script type="text/javascript">
	$(document).ready(function() {
		$('#employee').DataTable();
	});
</script>
<jsp:include page="footer.jsp" />
