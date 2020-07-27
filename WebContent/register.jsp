<!-- REGISTRATION .jsp PAGE																																		-->	
<!--#### PRE- CONDITION ##################################################################################################										-->
<!--##	user has selected the registration tab from the	index page 										   				##										-->	
<!--##																											        ##										-->	
<!--##	         request.getRequestDispatcher("/WEB-INF/views/maintain.jsp").forward(request, encountered 				##										-->	
<!--##												   																    ##										-->	
<!--##																											        ##										-->	
<!--######################################################################################################################										-->	
<!--  																																							-->																			        							
<!--  							T R A C E      E X E C U T I O N  		(from top to bottom)																	-->																																																				
<!--					           																																-->																																																				
<!--		1ST run:																																			-->	
<!--  					A)   	Java file linked scriptlet necessary to import needed user classes for this jsp page  										    -->
<!--  																																							-->
<!--  					B)   		FIRST RUN skipped: all (null) Attached yet to be entered html form variables to local java variables. 						-->
<!--  																																							-->
<!--  					C)	 		FIRST RUN skipped: TOP CODE (FAIL/SKIPS).. test for java and html string vars containing new (non-NUll) registree data		-->
<!--  																																							-->
<!--  					D)	 	Registration page begins to paint with initial html boiler plate Header documentation setup										-->
<!--  																																							-->
<!--  					E)	 			METHOD DEFINITION (skipped): js and jquery function showError( )indicate error once entered incorrect information???????-->
<!--  																																							-->						 
<!--  					F)	 			METHOD DEFINITION (skipped): call to function checkName( , )	Checks the entered names of first then middle then last -->
<!--  																																							-->  																																							
<!--  					G)	 			METHOD DEFINITION (skipped): over validateForm(field, type )js function													-->																			
<!--  																																							-->
<!--  					H_1) 	Java call checkName(document.getElementById("first_name"), "First");															-->
<!-- 																																							-->	
<!--  					H_2) 	Java call  checkName(document.getElementById("last_name"), "Last");																-->
<!--  																																							-->
<!--  					I)	 	Registration page body html																										-->
<!--  																																							-->
<!--  					I_1) 	Encounter action in html form onsubmit button awaiting ????????????????????????????												-->											
<!--																																							-->	
<!--##1 inner JUMP ....I_2)Encounter register button ..P A G E   R E L O A D ..  from FORM ACTION CALL ABOVE AWITING  form onsubmit button CLICK ????????  		-->	
<!--  				.																																			-->	
<!--  																																							-->																												
<!--  		2nd run:																																			-->	
<!--  					A)   			2ND RUN (skipped)????????:Java file linked scriptlet necessary to import needed user classes for this jsp page ?????????-->
<!--  																																							-->
<!--  					B)   	Entered html form variables from first run are now ATTACHED to local java variables. 											-->
<!--  																																							-->
<!--  					C_0)  	Test condition for java and html string vars containing new (non-NUll) registree data 											-->
<!--									   										   																				-->
<!--  					D)	 	Registration.jsp page begins to Re-Paint with initial html boiler plate Header documentation setup	?????????????????			-->
<!--  							    				RESULT: errorMessage now takes on one of 2 string usable values-	Registered Successfully"	or 	"error"	-->
<!--  																																							-->
<!--  					E)	 			METHOD DEFINITION (skipped): js and jquery function showError( )indicate error once entered incorrect information???????-->
<!--  																																							-->						 
<!--  					F)	 			METHOD DEFINITION (skipped): call to function checkName( , )	Checks the entered names of first then middle then last -->
<!--  																																							-->  																																							
<!--  					G)	 			METHOD DEFINITION (skipped): over validateForm(field, type )js function												    -->																			
<!--  																																							-->
<!--##2 inner JUMP .....H_1) 	Java call checkName(document.getElementById("first_name"), "First");														    -->
<!-- 																																							-->	
<!--##3 inner JUMP .....H_2) 	Java call  checkName(document.getElementById("last_name"), "Last");																-->																																
<!--									   										   																				-->
<!--  					H_3)	java script (with jQUERRY) method showError()  CALLED;																			-->
<!-- 																																							-->																																																				
<!--					E_1)	 java script jQUERRY METHOD showError() EXECUTES                                                                                -->	
<!--  																																							-->																												
<!--  					E_0) 	java script jQUERRY METHOD showError()  CLOSES ...																				-->
<!--														CONTROLL RETURNS TO 	H_3_C)																		-->
<!--  					H_4)	(errorMessage == "");	ERROR MESSAGE IS RESET TO EMPTY STRING 	???????????HOW DOES THE OLD "BAD " FORM DATA GET WIPED OUT 	    ->
<!--  																																							-->																																																				
<!--#### POST-CONDITION(s) ###########################################################################################################							-->
<!--##												   																    			##							-->	
<!--##			1)		user is sucessfully register-ed and page repaints with empty registration AFTER RIGHTSIDE comment   C_3)  	##							-->	
<!--##												   																    			##							-->	
<!--##					  		user  NOW ...........M U S T..........M A N U A L L Y ..... 										##							-->
<!--##					  				SELECT LOGIN OPTION FROM THE  L E F T  TOP CORNER LINK IN THE HEADER						##							-->
<!--##					  				(USER COULD RE-REGISER ANOTHER USER TOO AS WELL THOUGH AT THIS POINT)						##							-->	
<!--##												   																    			##							-->	
<!--##			OR...		   																   			 							##							-->	
<!--##												   																    			##							-->	
<!--##			2)	 	errorMessage HAS TAKEN ON A VALUE INDICATING INCORRECT ENTRY AT RIGHT HAND COMMENT H_5)						##							-->
<!--##												   																    			##							-->		
<!--##							JQUERRY showError() is subsequently called  and user is re-prompted  							   	##							-->	
<!--##												   																    			##							-->	
<!--##					 		page repaints with empty registration form AFTER showError() ending closing brace on 				##							-->	
<!--##																   																##							-->	
<!--##					 		rightside  RIGHTSIDE comment   E_1)																	##							-->	
<!--##																   																##							-->	
<!--##							user NOW ...........M U S T.........R E- R E G I S T E R .....C O R R E C T L L Y  					##							-->	
<!--##																   																##							-->	
<!--##					  	    OR.........SELECT LOGIN OPTION FROM THE  L E F T  TOP CORNER LINK TO GET TO LOGOUT SCREEN			##							-->
<!--##																   																##							-->	
<!--#################################################################################################################################							-->	
<!--																																							-->
<%@page import="emp.model.UserDAO,emp.pojo.User"%>																												<!-- A)....JSPscriptlet...import has 2 classes imported one is the UserDao class and one is the user pojo -->
<%																																								//  
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//JAVA (Registry.jsp) methods used:						
//	R_1.		getParameter() 
//					java.lang.String getParameter(java.lang.String name) 
//						Returns the value of a request parameter as a String, or null if the parameter does not exist. Request 
//						parameters are extra information sent with the request. For HTTP servlets, parameters are contained in the query 
//						string or posted form data. 
//						You should only use this method when you are sure the parameter has only one value. If the parameter might 
//						have more than one value, use getParameterValues(java.lang.String). 
//
//java script (Registry.jsp) methods used:
//			showError()
//						see...https://code.jquery.com/ui/1.12.1/jquery-ui.js  ????????????????????????????????
//
//			checkName()
//						checks field values for being all alphanumeric
//
//			select()
//						The select event occurs when a text is selected (marked) in a text area or a text field.
//						The select() method triggers the select event, or attaches a function to run when a select event occurs.
//
//  		validateForm()  
//						checks to see if the array  is NOT NULL and NOT text
//
//  		getElementById("userForm")
//						The Document method getElementById() returns an Element object representing the element whose id 
//						property matches the specified string. Since element IDs are required to be unique if specified, 
//						they're a useful way to get access to a specific element quickly.
//
//User defined methods:
//			register(user)
//                 		see.....emp.model.UserDAO.register(User user)
//			
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
																																								//  		"  These  are  the comments  best in the  world  !!!  "
																																								//																	.....RealDonaldTrump																															//
																																								//
  String firstName 			= request.getParameter("first_name");		       																					//   B)Java...  takes html imput value on frontend registration html vars and assings it to middle teir java vars/
  String middleName 		= request.getParameter("middle_name");																								//   B)...Java...  html imput value on frontend registration html vars and assings it to middle teir java vars/
  String lastName 			= request.getParameter("last_name");																								//   B)...Java...  takes html imput value on frontend registration html vars and assings it to middle tier java vars/																						
  String email 				= request.getParameter("user_email");																								//   B)...Java...  takes html imput value on frontend registration html vars and assings it to middle teirjava vars/?
  String userName 			= request.getParameter("user_id"); 																									//   B)...Java...  takes html imput value on frontend registration htmlvars and assings it to middle teir java vars/																								
  String password 			= request.getParameter("user_password");																							//   B)...Java...  takes html imput value on frontend registration html vars and assings it to middle tier java vars/
  String cssMessageClass 	= "success";																														//   B)...Java...  css string var is temporarily initialized  a success value
  String errorMessage 		= "";																																//   B)...Java...  string errormessage var is temporarily initialized  a empty space
																																								
  if (firstName != null && middleName != null && lastName != null && email != null && userName != null && password != null) {									//   C_0).Java...  if (all those "above just loaded form registree vars" hava a something in them){
	 errorMessage = firstName + " " + middleName + " " + lastName;																								//	 C)...Java...  		the errormessage = firstName + " " + middleName + " " + lastName 
	 User user = new User(userName, password, firstName, middleName, lastName, email);																			//   C)...Java...  		an object named user is created with elements : (userName, password, firstName, middleName, lastName, emails) 
																																								//
	 UserDAO userDao = new UserDAO();																															//   C)...Java... 		create a new object of type userDao from the parent class commonDao
																																								//   
	 if (userDao.register(user)) {																																//   C_1).Java... 		if (the registration method from userDao above succeeds in loading the user to db){ 
	    errorMessage += " Registered Successfully";																									//   C_3).............Java... 			"errorMessage" = a new string value " Registered Successfully" 
	 }																																							//	 C)...Java...		}
	 else {		 																																				//   C_2).Java...  		else...
	   cssMessageClass = "error";																																//   C)...Java... 			css string var is temporarily initialized  a error value		    
	   errorMessage = "Failed to Register " + errorMessage;																							//	 C_4).............Java... 			previously empty initiallized var takes on new string value indicating failure
	 }																																							//   C)...Java... 		}
  }																																								//   C)...Java... 	}
  																																								//   C)...Java...  scriptlet end....... allowed java to execute symbiotically with htmlin a jsp page
%>																																								<!-- 																						-->																																							
<!DOCTYPE html>																																					<!-- D)...html...   open html doc type tag -->
<html>																																							<!-- D)...html...   open html tag-->
<head>																																							<!-- D)...html...   open html header tag-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>		
<meta charset="ISO-8859-1">																																		<!-- D)...html...   meta data tag for international charachter set begin head -->
<meta http-equiv="cache-control" content="no-cache" /> 																											<!-- D)...html...   meta data tag says do not cache this page because it is a login page -->
<meta http-equiv="expires" content="0" />																														<!-- D)...html...   meta data tag says same thing for different browsers?????????????????????????????????-->
<meta http-equiv="pragma" content="no-cache" />																													<!-- D)...html...   meta data tag says same thing for different browser?????????????????????????????????????-->
<link rel="stylesheet" href="/EMP/css/bootstrap.min.css" type="text/css">																						<!-- D)...html...   link to bootstrap..assist this page with the internal site.css file by linking to it with this here link-->
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />																								<!-- D)...html...   link to  bootstrap.assist this page with the internal site.css file by linking to it with this here link??????????????????????????????????????????-->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">																		<!-- D)...html...   link to bootstrap.assist this page with the external jquery-ui.css link by linking to it with this here link?????????????????????????????????????????????????????????????????????????????-->
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>		<!-- D)...js...     external java script... run a script indicated by the integrity from the jquery website page  ?????????????????????-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>																							<!-- D)...js...     external java script...  run a script indicated by jquery website page???????????????????????-->
<script type = "text/javascript">																																<!-- D)...js...     BEGIN javascript tag for internally coded jquery  ?????????????????????-->
   // Global error message variable 																																																												
   var errorMessage;																																			//	 E)...JS... initializing javascript var???????????????????????????????????????																																		
	//																																							//	 E) 
	// Show error message using jQuery																															//	 E)   THIS FUNCTION IS NOT CALLED UNTILL THE validateForm() is called
	//																																							//	 E) 
	function showError() {																																		//	 E_1).JQuery... ...JQuery...  JQuerry function DEFINITION
		$( "#dialog-message" ).text(errorMessage);																												//	 E)...JQuery...  Load the the error text message in the jQuery Dialog Box (defined by the HTML "div" section with id "dialog-message")
		$( "#dialog-message" ).																																	//	 E)...JQuery...  Show the jQuery Dialog Box with the custom parameters (see the jQuery Dialog box API for each parameter details)
		 dialog(																																				//	 E)...JQuery...   
				 {																																				//	 E)...JQuery...         {
				  modal: true,																																	//	 E)...JQuery... 		set jquerry holds the parrent window hostage until ok clicked
				  show: {																																		//	 E)...JQuery... 					show: (css class){ 
					effect: "shake",																															//	 E)...JQuery... 						with effect "shake",
					duration: 1000																																//	 E)...JQuery... 						for duration of 1000
				  },																																			//	 E)...JQuery... 					},???
				  hide: {																																		//	 E)...JQuery... 					hide: (css class)	
					effect: "fade",																																//	 E)...JQuery... 						with a "fade"effect
					duration: 500																																//	 E)...JQuery... 						that last about 500
				  },																																			//	 E)...JQuery... 					},???
				  buttons: {																																	//	 E)...JQuery... 					display: (css class)
					Ok: function() {																															//	 E)...JQuery... 						that has a "close" function
					  $( this ).dialog( "close" );																												//	 E_0).JQuery... 							that closes
					}																																			//	 E)...JQuery... 					}
				  }																																				//	 E)...JQuery... 				}
				}																																				//	 E)...JQuery... 			}
		 );																																						//	 E)...JQuery... 		);
	}  																																							//	 E_1)...JQuery...  }
   // Common function to validate name and update error message accordingly	 																						 
   function checkName(field, type) {																															//	 F)...js... checkName(field, type )java  function {   
	   if (!field.value.match(/^[a-zA-Z-,]+(\s{0,1}[a-zA-Z-, ])*$/)) {								//(/^[??????]+(?????}[?????????])???)   F)...js... if( CHARACHTERSET COMPLIANCE with eiter uppercase or lowercase letters){
		  errorMessage += type + " Name must have alphanumerics only\n";																						//   F)...js... 	errorMessage = errorMessage +  (first, or, middle or last)   + "ghf cgjk jhlkj kjhlk kjghkluhljk;" 
		  field.style.backgroundColor = "#F29E98";																												//   F)...js... 	turns the error message red
		  field.select();																																		//   F)...js...		Selects all the text in a field??????????????????????
	   }																																						//   F)...js...	   }
   }																																							//   F)...js... }
   // 	Form validation																																			  
   function validateForm() {																																	//   G)...js... validateForm(field, type )js function {
	   errorMessage = "";																																		//   G)...js... 	initialize string var errorMessage EMPTY STRING 
	   																																							//   G)...js...
	   // 	Resets the text field's color 																														//   G)...js...
       var elements = document.getElementById("userForm").elements;																								//   G)...js... 	js var elements = gets all the newly entered  reisteree FORM FIELDS in the form js array  
	   for (var i = 0;i < elements.length;i++) {																												//   G)...js...    		for (i =0, i < # of all the elements gotten in the objects elements array above , i++){}
	       if (elements[i].type != null && elements[i].type == "text") {																						//   G)...js...    				if elements has something other than null in it && it is text field { 
	          elements[i].style.backgroundColor = "#FFFFFF";  																									//   G)...js... 					re-sets the backround field to white
	       }																																					//   G)...js...  				}
	   }																																						//   G)...js...			}
		//     these are just mid page eventually itereated calls that..... Validate all names																																	          
	   checkName(document.getElementById("first_name"), "First");																			 //  ##2 inner JUMP .....H_1).js... 		call/return to above checkName()        

	   checkName(document.getElementById("last_name"), "Last");	 																			 //  ##3 inner JUMP .....H_2).js... 		call/return to above checkName() 

	   if (errorMessage != "") {																																//   H_5)...js...		if (errorMessage != empty.........FROM EITHER........ ##2  0R  ##3 ABOVE ){
		  showError();																														 //  ##4 inner JUMP .....H_3).js...     	to Jquerry function showError() above
	   }																																						//   H_3_C)js...		}
	   															 																								//   H)...js... 
	   return (errorMessage == "");	   																															//	 H_4).js...		clean out  the error message for reuse after the call to showerror() returns
   }																							//?????????????????/closing brace doesnt highlight...................H)...js...  } END javascript tag     
</script>	
																																					
<title>Patient Information Management System Register</title>																									<!-- I...html... title tab name above url  -->
</head>																																							<!-- I...html... close header  -->
<body>																																							<!-- I...html...  open body tag	-->
    <div id="dialog-message" title="Error">																														<!-- I...html 			division with a title of error create-->
     <p>																																						<!-- I...html... 			open paragraph tag-->
      <span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 50px 0;"></span>																		<!-- I...html... 				inline style -->
     </p>																																						<!-- I...html... close paragraph tag  -->
	</div>																																						<!-- I...html... close "dialog-message" div tag -->
    <a href="/EMP">Login</a>																																	<!-- I...html... begin body  -->
	<h1 align="center">EMP Registration</h1>																													<!-- I...html... start page general menue header -->
	  <section class="outer-wrapper">																															<!-- I...html... 		begin css table influence on the remainder of the site with general outer wrapper-->
	    <div class="inner-wrapper">																																<!-- I...html... 			begin css table/cell influence on the remainder of the table w/inner wrapper  -->
	      <div class="container">																																<!-- I...html... 				containers affected by bootstrap -->
	        <div class="row">																																	<!-- I...html... 					containers affected by bootstrap  -->
              <div class="col-sm-4 col-sm-offset-4">																											<!-- I...html... 						containers affected by bootstrap   -->           
              <div class="<%=cssMessageClass%>"><%=errorMessage%></div>																							<!-- I...html... 						error Message  if wrong pw/un entered -->
				 <form method="post" action="/EMP/register.jsp" id="userForm" onsubmit="return validateForm()">													<!-- I_1)html... 							activates form button to call this page over again with below entered form registree elements -->
			     <fieldset>																																		<!-- I...html... 							call/return to above validateForm() with entered form data below         field set tag  -->
			         <div class="form-group">																													<!-- I...html... 							open First Name lable form-group group div -->
				       <label for="first_name" class="control-label">First Name</label>																			<!-- I...html...   								First name lable for first name form input text box  below -->
				       <input name="first_name" type="text" id="first_name" placeholder="Enter First Name" required class="form-control" value=""  />			<!-- I...html...   								first name form input text box  -->
				     </div>																																		<!-- I...html... 							close first Name form-group input div-->  
				     <div class="form-group">																													<!-- I...html...  							open Middle Name lable form-group group div -->
				       <label for="middle_name" class="control-label">Middle Name</label>																		<!-- I...html...  								Middle Name lable for first name form input text box  below -->
				       <input name="middle_name" type="text" id="middle_name" placeholder="Enter Middle Name" required class="form-control" value=""  />		<!-- I...html...  								Middle Name form input text box -->
				     </div>																																		<!-- I...html...  							close first Name form-group input div -->
				     <div class="form-group">																													<!-- I...html...								open Last Name lable form-group group div -->
				       <label for="last_name" class="control-label">Last Name</label>																			<!-- I...html...  								Last Name lable for first name form input text box  below -->
				       <input name="last_name" type="text" id="last_name" placeholder="Enter Last Name" required class="form-control" value=""  />				<!-- I...html...  								Last Name form input text box -->
				     </div>																																		<!-- I...html...  							close Last Name form-group input div -->
				     <div class="form-group">																													<!-- I...html...  							open user_email lable form-group group div  -->
				       <label for="user_email" class="control-label">Email</label>																				<!-- I...html...    								user_email lable for user_email form input text box  below -->
				       <input name="user_email" type="email" id="user_email" placeholder="Enter Email" required class="form-control" value=""  />				<!-- I...html...     								user_emailform input text box -->
				     </div>																																		<!-- I...html...  							close user_email form-group input div -->				     
                     <div class="form-group">																													<!-- I...html...  							open user_id lable form group-group div  -->
				       <label for="user_id" class="control-label">User Id</label>																				<!-- I...html...    								user_id lable for user_id form input text box  below  -->
				       <input name="user_id" type="text" id="user_id" placeholder="Enter User Id" required class="form-control" value=""  />					<!-- I...html...     								user_id form input text box -->
				     </div>																																		<!-- I...html....  							close user_id form-group input div -->
				     <div class="form-group">																													<!-- I...html...     						open user_password lable form group-group div  -->
				       <label for="user_password" class="control-label">User Password</label>																	<!-- I...html...    								user_password lable for user_password form input text box  below  <-->
				       <input name="user_password" type="password" id="password" placeholder="Enter Password" required class="form-control" value="" />			<!-- I...html...     								user_password form input text box -->
				     </div>																																		<!-- I...html....  							close user_password form input div -->
				     <div class="form-group text-center">																										<!-- I...html...							open register submit lable form group-group div   and centers the whole wrapped form experience in the middle   -->
				       <button id="register" name="userRegister" type="submit" value="register" class="btn btn-primary">Register</button>	<!--  ##1 inner JUMP ....I_2)html... 										register submit button.. sends ALL THE ENTERED  FORM TO method valisate Foem and relaods the page as per E(1) action call -->
				     </div>																																		<!-- I...html...							close register submit form input div  -->
			     </fieldset>																																	<!-- I...html... 						close register fieldset tag  -->
				 </form>																																		<!-- I...html... 						close register form  tag  -->
			 </div>																																				<!-- I...html...  					  close register class="col-sm-4 col-sm-offset-4" div  -->
		    </div>																																				<!-- I...html...  					close register class="row" div  -->
	       </div>																																				<!-- I...html...  				close register submit form input div  -->
	      </div>																																				<!-- I...html...  			close register inner-wrapper div  -->
   </section>																																					<!-- I...html...  		close register outer-wrapper section tag  -->
</body>																																							<!-- I...html... close register body tag  -->
</html>																																							<!-- I...html... close register main html tag   -->


