<%@page import="emp.model.UserDAO, emp.model.User"%>
<%
session.removeAttribute("SESSION_USER_TOKEN");  
String userName = request.getParameter("user_id"); 						// get user_id from imported index.jsp form text entry area and store in string var
String password = request.getParameter("user_password");				// get password from imported index.jsp store in string var
String login = request.getParameter("userSubmit");				
String register = request.getParameter("userRegister");				

String errorMessage = "";
User user = null;

if ("login".equals(login)) {  
	  if (userName != null && password != null) {  								// if something has been typed in both text fields 
		  UserDAO userDao = new UserDAO();					// create a new object of type commnServelt from the parrent class commonServlet
		  user = userDao.validateLogin(userName, password);		// call/use java libary function... specially created for varifiying usernames and passwords
																				// and set that equal to the empty error message variable created above
		  if (user != null) {										// if validateLogin did not come back with an error then open the EMP start screen because 
			  																   // errorMessage still eqauls "" from above
	         session.setAttribute("SESSION_USER_TOKEN", user);
		     response.sendRedirect("/EMP/start");
		  }
		  else {
			 errorMessage = "Invalid User: " + userName;
		  }
	  }
}

if ("register".equals(register)) {
	 response.sendRedirect("register.jsp");
}
%>
<!DOCTYPE html>
<html>																													<!-- standard boiler plate header stuff 	 begin  -->
<head>																													<!--   -->
<meta charset="ISO-8859-1">																								<!--  international charachter set begin head -->
<meta http-equiv="cache-control" content="no-cache" /> 																	<!--  says do not cache this page because it is a login page -->
<meta http-equiv="expires" content="0" />																				<!--   says same thing for different browsers-->
<meta http-equiv="pragma" content="no-cache" />																			<!--   says same thing for different browser-->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" type="text/css">		<!--   bootstrap..include all style sheet classes from this page-->
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />														<!-- include style sheet named site.css  --> 
<title>Employee Information Management System Login</title>																<!-- title tab name above url    -->
</head>																													<!-- standard header stuff 	 end  -->
<body>																													<!-- begin body  -->
	<h1 align="center">EMP Login</h1>																					<!-- start page general menue header -->
	  <section class="outer-wrapper">																					<!-- begin css table influence on the remainder of the site with general outer wrapper-->
	    <div class="inner-wrapper">																						<!-- begin css table/cell influence on the remainder of the table w/inner wrapper  -->
	      <div class="container">																						<!--because its not in css sites file it must be in bootstrap  -->
	        <div class="row">																							<!-- because its not in css sites file it must be in bootstrap  -->
              <div class="col-sm-4 col-sm-offset-4">																	<!-- in bootstrap...maybe  a repeating 4 collumn grid area   -->           
              <div class="error"><%=errorMessage%></div>																<!-- error Message  if wrong pw/un entered -->

				 <form method="post" action="/EMP/index.jsp" id="userForm">						<!-- ??????????????  -->
			     <fieldset>																		<!--  ?????????????? -->
				     <div class="form-group">													<!-- ????????  -->
				       <label for="user_id" class="control-label">User Id</label>								<!--   -->
				       <input name="user_id" type="text" id="user_id" class="form-control" value=""  />					<!--   -->
				     </div>																								<!--   -->
				     <div class="form-group">																			<!--   -->
				       <label for="user_password" class="control-label">User Password</label>							<!--   -->
				       <input name="user_password" type="password" id="Name" class="form-control" value="" />				<!--   -->
				     </div>																								<!--   -->
				     <div class="form-group text-center">																<!-- just centers the whole wrapped form experience in the middle   -->
				       <button id="login" name="userSubmit" type="submit" value="login" class="btn btn-primary">Login</button>	<!--   -->
				       &nbsp;&nbsp;&nbsp;&nbsp;
				       <button id="register" name="userRegister" type="submit" value="register" class="btn btn-primary">Register</button>	<!--   -->
				     </div>																								<!--   -->
			     </fieldset>																							<!--   -->
				 </form>																								<!--   -->
			 </div>																										<!--   -->
		    </div>
	       </div>
	      </div>
   </section>
</body>
</html>