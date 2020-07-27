<%
/* <!-- error.jsp 			TRACE EXECUTION  (from top to bottom)          CATEGORIES LISTED IN THE RIGHT SIDE COMMENT AREA:							-->	
<!-- 																																					-->	
<!--#### PRE- CONDITION ##################################################################################################								-->
<!--##												   																    ##								-->	
<!--##	from ????????.jsp  ...........comment line ...H_0)...															##								-->	
<!--##												   																    ##								-->	
<!--##	#0		encountered jump on ????????????????????????????????????????????????????								##								-->
<!--##																											        ##								-->	
<!--######################################################################################################################								-->	
<!--																																					-->			 																																		
<!-- 																																					-->
<!-- 						#### APP TRACE ######################################################################################################		-->	
<!-- 						##												   																   ##		-->			
<!-- 						##	#1		Er_A_1)...error.jsp page opens if someone trys to type in the adress path extensions in the url bar    ##		-->		
<!-- 						##												   																   ##		-->	
<!-- 						#####################################################################################################################		-->																																									
<!-- 																																					-->																				
<!-- 																																					-->	
<!-- 						#### APP TRACE ######################################################################################################		-->	
<!-- 						##												   																   ##		-->			
<!-- 						##	#2		Er_A_2)... OPEN  index.jsp which renders the start page all over again (index) 		                   ##		-->			
<!-- 						##							doesnt work ?????????????????/		 							   					   ##		-->																																																													
<!-- 						##												   																   ##		-->			
<!-- 						##	#3		Er_A_3)...???????????????????????????????????/ 									   					   ##		-->			
<!-- 						##												   																   ##		-->	
<!-- 						##												   																   ##		-->			
<!-- 						##	#4		Er_A_4)...	OPEN  index.jsp which renders the start page all over again (index) 					   ##		-->			
<!-- 						##												   																   ##		-->			
<!-- 						#####################################################################################################################		-->	
<!--																																					-->			 																																		
<!--																																					-->	
<!--#### POST-CONDITION ##################################################################################################								-->
<!--##																													##								-->	
<!--##	user is re-prompted to login again from in the index screen											   			##								-->	
<!--##																													##								-->
<!--######################################################################################################################								-->			 																																		
 */
%>
<!DOCTYPE html>																										<!-- #1	-->							<!--Er_A_1)...HTML... boiler plate html neccesary for an error page -->
<html>																																					<!--Er_A)...HTML ... open-->
<head>																																					<!--Er_A)...HTML ... open head-->
<meta charset="ISO-8859-1">																																<!--Er_A)...HTML ... ISO standard character sets for different languages.-->
<meta http-equiv="cache-control" content="no-cache" />																									<!--Er_A)...HTML ... prevents caching when used over a secure connection??twice???-->
<meta http-equiv="expires" content="0" />																												<!--Er_A)...HTML ... prevents caching when used over a secure connection??twice???-->
<meta http-equiv="pragma" content="no-cache" />																											<!--Er_A)...HTML ... prevents caching when used over a secure connection??twice??? -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" type="text/css">										<!--Er_A)...HTML ... Bootstrap formatting privided by Maxcdn-->
<link rel="stylesheet" href="/EMP/css/site.css" type="text/css" />																						<!--Er_A)...HTML ... link to include css in case no internet connection....?-->
<title>Employee Data Management System</title>																											<!--Er_A)...HTML ... App name banner-->
</head>																																					<!--Er_A)...HTML ... close head tag-->
<body>																																					<!--Er_A)...HTML ... open body-->
    <a class="text-color-employee"href="/EMP">Logout</a>															<!-- #2	-->							<!--Er_A_2)...HTML...	jumps to index.jsp where the start page is rendered ...logout link in top left -->
	<h1 align="center">Employee Data (<a href="/EMP/start">Index</a>)</h1>											<!-- #3	-->							<!--Er_A_3)...HTML...	centers label ????????????????????????/  -->
	  <section class="outer-wrapper">																													<!--Er_A)...HTML ... 				css formatting-->
	    <div class="inner-wrapper">																														<!--Er_A)...HTML ... 					css formatting-->
	      <div class="container">																														<!--Er_A)...HTML ... 						css formatting-->
	        <div class="row">																															<!--Er_A_4)...HTML ... 							close tag-->
<div class="error">You have not logged in properly. Please login <a href="/EMP">here</a></div>						<!-- #4	-->							<!--Er_A)...HTML ... 						error prompt with index.jsp reloaded-->
	        </div>																																		<!--Er_A)...HTML ... 				close tag->																																																																		
	      </div>																																		<!--Er_A)...HTML ... 			close tag->	
	    </div>																																			<!--Er_A)...HTML ... 		close tag-->
   </section>																																			<!--Er_A)...HTML ... 	close Section-->
</body>																																					<!--Er_A)...HTML ... close tag -->
</html>																																					<!--Er_A)...HTML ... close tag -->
