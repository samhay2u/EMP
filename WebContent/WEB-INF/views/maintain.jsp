<%@page import="emp.pojo.Employee, emp.CommonServlet"%>
<!-- maintain.jsp 			TRACE EXECUTION  (from top to bottom)          CATEGORIES LISTED IN THE RIGHT SIDE COMMENT AREA:							-->	
<!-- 																																					-->	
<!-- 																																					-->
<!--#### PRE- CONDITION ##################################################################################################								-->
<!--##	from within the maintain function of the employeeServlet...												   		##								-->	
<!--##																											        ##								-->	
<!--##	         request.getRequestDispatcher("/WEB-INF/views/maintain.jsp").forward(request, encountered 				##								-->	
<!--##												   																    ##								-->	
<!--##																											        ##								-->	
<!--######################################################################################################################								-->	
<!--																																					-->			 																																		
<!-- 																																					-->
<!-- 						#### APP TRACE ######################################################################################################		-->	
<!-- 						##												   																   ##		-->			
<!-- 						##	#1	dry Header.jsp loads	   							  					   								   ##		-->		
<!-- 						##					form elements are initialized 										   						   ##		-->	
<!-- 						#####################################################################################################################		-->																																									
<!-- 																																					-->																				
<!-- 																																					-->	
<!-- 						#### APP TRACE ######################################################################################################		-->	
<!-- 						##												   																   ##		-->			
<!-- 						##	#2		form action is set to recieve form elements 	  													   ##		-->			
<!-- 						##			(and later submitted via submit bttn wich will recalls the employeeServlet re-rendering employee/ page)##		-->																																																													
<!-- 						##												   																   ##		-->			
<!-- 						##	#3	    form submit button is clicked.../EMP/employees rendered by employee servlet is reloaded	 			   ##		-->			
<!-- 						##												   																   ##		-->			
<!-- 						#####################################################################################################################		-->	
<!--																																					-->			 																																		
<!--																																					-->	
<!--#### POST-CONDITION ##################################################################################################								-->
<!--##												   																    ##								-->	
<!--##												   																    ##								-->	
<!--##			employeeServlet is recalled with just entered form elements												##								-->
<!--##																											        ##								-->	
<!--######################################################################################################################								-->	
<!--																																					-->	
<jsp:include page="header.jsp" />																							<!--  #1	   					main_A_1)...java..  include DRY header 		-->	
<%																																						//	main_A_)...java..jsp scriptlet starts........
	String opr = request.getParameter(CommonServlet.OPR), id = "", dob = "", fname = "", lname = "",													//	main_A_)...java..	initialized empty variables to be used later
			gender = "", hdate = "", salary= ""  ;																										//	main_A_)...java..
																																						//  main_A_)...java..   
	boolean isEdit = "edit".equals(opr);																												//	main_A_)...java..  if the opr html querry parametr up in the url has "opr=edit" representation 
																																						//	main_A_)...java..  declare boolean var = isEdit to hold a gotten from opr true/false value
																																						//	main_A_)...java.. 
																																						//	main_A_)...java.. 
	if (isEdit) {																																		//	main_A_)...java..	if(true ...has all the opr stuff above){
		Employee employee = (Employee) request.getAttribute(CommonServlet.EMPLOYEE);																	//	main_A_)...java..			create a new Employee object
																																						//  main_A_)...java..			
		id = employee.getEmp_No();																														//	main_A_)...java..				assign gotten employee values to local string vars declared above 
		dob = employee.getDob();																														//	main_A_)...java..				assign gotten employee values to local string vars declared above
		fname = employee.getF_Name();																													//	main_A_)...java..				assign gotten employee values to local string vars declared above
		lname = employee.getL_Name();																													//	main_A_)...java..				assign gotten employee values to local string vars declared above
		gender = employee.getGender();																													//	main_A_)...java..				assign gotten employee values to local string vars declared above
		hdate = employee.getHire_Date();																												//	main_A_)...java..				assign gotten employee values to local string vars declared above
		salary = employee.getSalary();																													//	main_A_)...java..				assign gotten employee values to local string vars declared above
	}																																					//	main_A_)...java..	}
																																						//	main_A_)...java.
	String readonly = isEdit ? "readonly" : "";																											//	main_A_)...java..				declare string var readonly = a space (""),  if(?) isEdit holds the string "readonly"  
%>																																						<!--main_A_)...java..........end scriptlet-->
<div class="col-sm-4 col-sm-offset-4">																													<!--main_B)...HTML...		css/html positioning -->
	<h2 align="center">Maintain employee</h2>																											<!--main_B)...HTML...			page header/labeling  	-->
	<form method="post" action="/EMP/employees" id="employeeForm">																						<!--main_B)...HTML...			"post" calls doPost() over in the employeeServlet and passes it the just entered for data-->
		<fieldset>																											<!--  #2					    main_B)...HTML...					open actual displayed form data area-->
			<div class="form-group">																													<!--main_B)...HTML...					begin part of form group : employee/id-->
				<label for="EmployeeNumber" class="control-label">Employee
					Number</label> <input name="EmployeeNumber" type="text" id="EmployeeNumber"
					class="form-control" value="<%=id%>" <%=readonly%> /> <input
					name="opr" type="hidden" id="opr" value="<%=opr%>Submit" />
			</div>																																		<!--main_B)...HTML...					close		-->
			<div class="form-group">																													<!--main_B)...HTML...						begin part of form group : dob		-->
				<label for="DOB" class="control-label">Date of Birth
					(YYYY-MM-DD)</label> <input name="DOB" type="text" id="DOB"
					class="form-control" value="<%=dob%>" />
				<div class="form-group">																												<!--main_B)...HTML... 						begin SUB part of form group : first Name/fname 		-->
					<label for="FirstName" class="control-label">First Name</label> <input
						name="FirstName" type="text" id="FirstName" class="form-control"
						value="<%=fname%>" />
				</div>																																	<!--main_B)...HTML...		-->
				<div class="form-group">																												<!--main_B)...HTML...			   			begin part of form group : last Name/lname -->
					<label for="LastName" class="control-label">Last Name</label> <input
						name="LastName" type="text" id="LastName" class="form-control"
						value="<%=lname%>" />
				</div>																																	<!--main_B)...HTML...		-->
			</div>																																		<!--main_B)...HTML...		-->
			<div class="form-group">																													<!--main_B)...HTML...			   			begin part of form group : Gender-->
				<label for="Gender" class="control-label">Gender</label> <input
					name="Gender" type="text" id="Gender" class="form-control"
					value="<%=gender%>" />
			</div>																																		<!--main_B)...HTML...		-->
			<div class="form-group">																													<!--main_B)...HTML...						begin part of form group : Hire Date/ HireDate		-->
				<label for="HireDate" class="control-label">Hire Date</label> <input
					name="HireDate" type="text" id="HireDate" class="form-control"
					value="<%=hdate%>" />			
			</div>																																		<!--main_A_)...HTML...		-->
			<div class="form-group">																													<!--main_A_)...HTML...						begin part of form group : Salary/salary		-->
				<label for="Salary" class="control-label">Salary</label> <input
					name="Salary" type="text" id="Salary" class="form-control"
					value="<%=salary%>" />			
			</div>																																		<!--main_A_)...HTML...		-->
			<div class="form-group text-center">																										<!--main_A_)...HTML...		-->
				<button id="employeeSubmit" name="employeeSubmit" type="submit"
					class="btn btn-primary">Submit</button>																	<!-- #3							main_A_)...HTML...						launches action to redirect with above just enetered form elements-->
			</div>																																		<!--main_A_)...HTML...						close-->
		</fieldset>																																		<!--main_A_)...HTML...				close-->
	</form>																																				<!--main_A_)...HTML...			close-->
</div>																																					<!--main_A_)...HTML...		close-->
</div>																																					<!--main_A_)...HTML...		close-->
</div>																																					<!--main_A_)...HTML...		close-->
</div>																																					<!--main_A_)...HTML...		close-->
</section>																																				<!--main_A_)...HTML...		close-->
</body>																																					<!--main_A_)...HTML...		close-->
</html>																																					<!--main_A_)...HTML...		close-->
