<%
//<!-- header.jsp 			TRACE EXECUTION  (from top to bottom)          CATEGORIES LISTED IN THE RIGHT SIDE COMMENT AREA:							-->	
//<!-- 																																					-->	
//<!-- 																																					-->
//<!--#### PRE- CONDITION ####################################################################################################							-->
//<!--##												   																    ##							-->	
//<!--##	from home.jsp  ...........comment line ...H_0)...																##							-->	
//<!--##												   																    ##							-->	
//<!--##	#0		encountered jump on first line  ........<jsp:include page="header.jsp" />								##							-->
//<!--##																											        ##							-->	
//<!--########################################################################################################################							-->	
//<!--																																					-->			 																																		
//<!-- 																																					-->
//<!-- 						#### APP TRACE ######################################################################################################		-->	
//<!-- 						##												   																   ##		-->			
//<!-- 						##	#1	header jsp open and "paints DRY header material???????????????????	   							  		   ##		-->		
//<!-- 						##												   																   ##		-->	
//<!-- 						#####################################################################################################################		-->																																									
//<!-- 																									  												-->	
//<!-- 																																					-->	
//<!-- 						#### APP TRACE ######################################################################################################		-->	
//<!-- 						##												   																   ##		-->			
//<!-- 						##	#2	logout link opens 	 									   							   					   ##		-->			
//<!-- 						##												   																   ##		-->			
//<!-- 						##	#3	header ends with scriptlet	 									   										   ##		-->			
//<!-- 						##												   																   ##		-->			
//<!-- 						#####################################################################################################################		-->	
//<!--																																					-->			 																																		
//<!--																																					-->	
//<!--#### POST-CONDITION ####################################################################################################							-->
//<!--##												   																    ##							-->	
//<!--##	header.jsp has renedered or painted  																			##							-->	
//<!--##												   																    ##							-->	
//<!--########################################################################################################################							-->			 																																		
//<!--																																					-->	 
%>
<%@page import="emp.pojo.User, emp.CommonServlet"%>																		          <!-- #1					 He_A)...html... jsp scriptlet imports user controller classes	-->
<!DOCTYPE html>																																			<!-- He_A)...html... DRY STANDARD HTML HEADER OPEN STUFF	-->
<html>																																					<!-- He_A)...html... DRY STANDARD HTML HEADER OPEN STUFF	-->
<head>																																					<!-- He_A)...html... DRY STANDARD HTML HEADER OPEN STUFF
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>																			
<meta charset="ISO-8859-1">																																<!-- He_A)...html... international charachter set begin head-->
<meta http-equiv="cache-control" content="no-cache" />																									<!-- He_A)...html... says do not cache this page because it is a login page-->
<meta http-equiv="expires" content="0" />																												<!-- He_A)...html... says same thing for different browsers	-->
<meta http-equiv="pragma" content="no-cache" />																											<!-- He_A)...html... says same thing for different browser		-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css" />
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
<title>Employee Data Management System</title>																											<!-- He_A)...html... PAGE TITLE  -->
</head>																																					<!-- He_A)...html... close HEAD-->
<body>																																					<!-- He_B)...html... OPEN BODY-->
   <a href="/EMP">Logout</a>																															<!-- He_B)...html... LOGGOUT BUTTON.. "/EMP" designation ..opens commonservlet when clicked		-->
	<h1 align="center"><%=request.getAttribute(CommonServlet.TITLE)%></h1>														  <!-- #2					 He_B_1)...html..			grabs commonServlet and aligns it		-->
	  <section class="outer-wrapper">																													<!-- He_)...html...				 open section		-->
	    <div class="inner-wrapper">																														<!-- He_)...html....			   open div		-->
	      <div class="container">																														<!-- He_)...html...					open div		-->
	        <div class="row">	
	        <div class="col-sm text-center">																														<!-- He_)...html...					 open div		-->
			<%																																			//   He_)...java...							jsp  scriptlet beg	
			    Object obj = session.getAttribute(CommonServlet.SESSION_USER_TOKEN);																	//   He_)...java...								get session token and put it in newly created obj	
				if (obj != null && obj instanceof User) {																								//   He_)...java...								if obj has a user instance in it???????????  {
					User user = (User) obj;																												//   He_)...java...									create a new user = but cast the type User as an obj ????????	
            %>		
           																																	<!-- He_)...html...							end jsp scriptlet-->		
					<div class="success">Welcome <%=user.getName()%></div>																				<!-- He_)...html...								set container to = gotten username via scriptlet-->		
			<%																																			//   He_)...java...							open another scriptlet
				}																																		//   He_)...java...							}
																																						//   He_)...java...	
				String message = (String) request.getAttribute(CommonServlet.MESSAGE); 																	//   He_)...java...							 Get the message from the request attributeGet the message from the request attribute
																																						//   He_)...java...	
				if (message != null && !"".equals(message)) {																							//   He_)...java...							if ( coomonServlet message not null or empty space)
					String cssMessageClass = message.contains("successfully") ? "success" : "error";													//   He_)...java...								newly created string = "successfully" if success   else = "error"...close scriptlet
			%>	        	        																													<!-- He_)...html...								-->		
				    <div class="<%=cssMessageClass%>"><%=message%></div>																				<!-- He_)...html...								-->
			<%																																			//   He_)...java...	??????????????????????????????css class
				}																																		//   He_)...java...	close
			%> 	
			 <br>
			</div>																												   <!-- #3				     He_)...html...close scriptlet		-->			 
			