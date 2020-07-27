<!-- index.jsp 			TRACE EXECUTION  (from top to bottom)          CATEGORIES LISTED IN THE RIGHT SIDE COMMENT AREA:					-->	
<!--																																		-->			 																																		
<!--  																																		-->
<!--  																																		-->
<!--  					B_0)   CLEARS OUT A PREVIOUS SESSION_USER_TOKEN																		-->
<!--  							B_1) 	initially skipped over	because user form is empty and values are null								-->
<!--  																																		-->			
<!--  							C)	 initially  skipped over as well											 							-->
<!-- 																																		-->
<!--  					D)	 BEGIN  html page HEADER with BODY page loads 																	-->
<!--  																																		-->
<!--  					E)	 FORM METHOD & action call...reload this .jsp page w/user credentials once submit button is clicked   			-->
<!--  							(form data entry occures)																					-->
<!-- 																																		-->
<!--					E_1)  login.. submit button is hit reloading the page with associated just entered form data						-->
<!--  																																		-->
<!--  	   JUMP OUT...........		C_1) open the start page which is started or actually begins from inside the DRY commonServelt 			-->		
<!--  																																		-->
<!--  												else																				    -->
<!--  																																		-->
<!--  	  							C_0)  errorMessage  generates indicating no such user found												-->
<!--  																																		-->																															
<!--								A)   page loads again and user is re-prompted with  empty  form elements , class imports reloaded again -->
<!--  																																		-->																															
<!--  																																		-->		
<!--  					or 																													-->
<!--  																																		-->
<!--  																																		-->																				
<!--  					E_2) register.. submit button is hit reloading the page with associated just entered form data						-->	
<!--  																																		-->	
<!--  		JUMP OUT...........		C_2) redirect.. open register.jsp																		-->	
<!--  																																		-->	
<!--  																																		-->																	
<!--  																																		-->
<!--  																																		-->
<!--  																																		-->										
<%@page import="emp.model.UserDAO, emp.pojo.User, emp.CommonServlet"%>																		<!-- A).....Java... JSPscriptletBegin...import 3 classes( UserDao class,  user pojo, dry CommonServlet) -->
<%																																			//   B_0)...Java... JSPscriptlet Begin...
session.removeAttribute(CommonServlet.SESSION_USER_TOKEN);  																	//   B_0)...............Java...  removeAttribute:Removes object bound with "name" from session throws if not there
String userName 		= request.getParameter("user_id"); 								 													//   B_1)...Java...  get user_id from imported index.jsp form text entry area and store in string var
String password 		= request.getParameter("user_password");																			//   B_1)...Java...  getParameter: gets 1 parameter a password from imported index.jsp store in string var
String login 			= request.getParameter("userSubmit");																				//   B_1)...Java...  		
String register 		= request.getParameter("userRegister");																				//   B_1)...Java...  			
String errorMessage 	= "";																												//   B_1)...Java...  													 
User user 				= null;																									//   B_1)...............Java...  
if ("login".equals(login)) {  																									//   C).................Java...  if (below html var "login" = assigned java var login above) {
	  if (userName != null && password != null) {  																							//   C)...Java...  if (something has been typed in both text fields) {
		  UserDAO userDao = new UserDAO();																									//   C)...Java...  		create a new object of type commnServelt from the parrent class commonServlet
		  user = userDao.validateLogin(userName, password);	   																				//   C)...Java...  		call/use java libary function... specially created for varifiying usernames and passwords
																																			//   C)...Java...  		and set that equal to the empty error message variable created above
		  if (user != null) {																												//   C)...Java...  			if validateLogin did not come back with an error { 
			  																   																//   C)...Java...  				then open the EMP start screen because... at this point errorMessage still eqauls "" from above
	         session.setAttribute(CommonServlet.SESSION_USER_TOKEN, user);																	//   C)...Java...  				binds object to object name; a convention is setting up a session variable for a valid user object
		     response.sendRedirect("/EMP/start");																				//   JUMP OUT....C_1).............Java...  				load start page 
		  }																																	//   C)...Java...  			}
		  else {																															//   C)...Java...  			else{
			 errorMessage = "Invalid User: " + userName;																		//   C_0).............Java...  				fail user was null val
		  }																																	//   C)...Java...  			}
	  }																																		//   C)...Java...  		}
}																																			//   C)...Java...  }  
																																			//	 C)...Java...  
if ("register".equals(register)) {																											//   C)...Java...  if (something has been typed in both text fields){
	 response.sendRedirect("register.jsp");																						//   JUMP OUT....C_2)...Java...  	load the regiser.jsp page
}																																			//	 C)...Java...  }   		folowed by JSPscriptlet End..
%>																																		
<!DOCTYPE html>																													<!-- D)...............html...  standard boiler plate header stuff 	 begin  -->
<html>																																		<!-- D)...html...  standard boiler plate header stuff 	 begin  -->
<head>																																		<!-- D)...html...  header tag -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>		
<meta charset="ISO-8859-1">																													<!-- D)...html...  international charachter set begin head -->
<meta http-equiv="cache-control" content="no-cache" /> 																						<!-- D)...html...  says do not cache this page because it is a login page -->
<meta http-equiv="expires" content="0" />																									<!-- D)...html...  says same thing for different browsers -->
<meta http-equiv="pragma" content="no-cache" />																								<!-- D)...html...  says same thing for different browser -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" type="text/css">							<!-- D)...html...  bootstrap..include all style sheet classes from this page-->
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />																			<!-- D)...html...  include style sheet named site.css  --> 
<title>Employee Information Management System Login</title>																					<!-- D)...html...  title tab name above url    -->
</head>																																		<!-- D)...html...  standard header stuff end  -->
<body>																																		<!-- D)...html...  begin body  -->
	<h1 align="center">EMP Login</h1>																										<!-- D)...html...  		start page general menue header -->
	  <section class="outer-wrapper">																										<!-- D)...html... 			 begin css table influence on the remainder of the site with general outer wrapper -->
	    <div class="inner-wrapper">																											<!-- D)...html...  				begin css table/cell influence on the remainder of the table w/inner wrapper  -->
	      <div class="container">																											<!-- D)...html...  					because its not in css sites file it must be in bootstrap  ???????????-->
	        <div class="row">																												<!-- D)...html...  						because its not in css sites file it must be in bootstrap  ?????????-->
              <div class="col-sm-4 col-sm-offset-4">																						<!-- D)...html...  							in bootstrap...maybe  a repeating 4 collumn grid area   ??????????????-->           
              <div class="error"><%=errorMessage%></div>																					<!-- D)...html...  							error Message if wrong pw/un entered ????????????????????????-->
				 <form method="post" action="/EMP/index.jsp" id="userForm">														<!-- E)...............html...  								load this .jsp page with associated userForm  -->
			     <fieldset>																													<!-- E)...html...  								The <fieldset> tag draws a box around the related elements -->
				     <div class="form-group">																								<!-- E)...html...  									begin a form-group for user-id -->
				       <label for="user_id" class="control-label">User Id</label>															<!-- E)...html...  										displays the name of the input user_id field next to the input field  -->
				       <input name="user_id" type="text" id="user_id" class="form-control" value=""  />										<!-- E)...html...  										associates entered userId text in this input field with a label and the backend variable both named user_id  -->
				     </div>																													<!-- E)...html...  									close user-id form-group div  -->
				     <div class="form-group">																								<!-- E)...html...  									begin a form-group for Password -->
				       <label for="user_password" class="control-label">User Password</label>												<!-- E)...html...  										displays the name of the input PASSWORD field next to the input field -->
				       <input name="user_password" type="password" id="Name" class="form-control" value="" />								<!-- E)...html...  										associates entered password text in this input field with a label name of user-password and the backend variable id= name   -->
				     </div>																													<!-- E)...html...  									closes password form-group div   -->
				     <div class="form-group text-center">																					<!-- E)...html...  									just centers the whole wrapped form experience in the middle   -->
				       <button id="login" name="userSubmit" type="submit" value="login" class="btn btn-primary">Login</button>	<!-- E_1).............html...  										button wwith login form data and side text displayed   -->
				       &nbsp;&nbsp;&nbsp;&nbsp;																					<!-- E_2).....below...html... 																								-->
				       <button id="register" name="userRegister" type="submit" value="register" class="btn btn-primary">Register</button>	<!-- E)...html...  										button wwith register form data and side text displayed    -->
				     </div>																													<!-- E)...html...  									closes register form-group div  -->
			     </fieldset>																												<!-- E)...html...  								closes fieldset  -->
				 </form>																													<!-- E)...html...  								close form   -->
			 </div>																															<!-- E)...html...  							close div  -->
		    </div>																															<!-- E)...html...						close div -->
	       </div>																															<!-- E)...html...					close div -->
	      </div>																															<!-- E)...html...				close div -->
   </section>																																<!-- E)...html...			close section -->
</body>																																		<!-- E)...html...		close </body> -->
</html>																																		<!-- E)...html...	close </html>-->