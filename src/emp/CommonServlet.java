package emp; 																											//essentially defines the file as an EMP project package to be used there exclusively
																														//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//CommonServlet.java 
//
//--G E N E R A L   N O T E S----------------------------------------------------------------------
//
//
//--C L A S S   D E F I N I T I O N S   and   M E T H O D S   U S E D---------------------------------------
//
//
//	CLASSES:
//
//	classCS.  	CommonServlet 
//							Create a parrent CommonServlet CLASS to contain all the D.R.Y. code prevalently used in all the child classes
//							extend this parents charachteristics directly from...
//							the parrent servlet ..... HttpServlet.
//							which Provides an abstract class to be subclassed to create an HTTP servlet 
//							suitable for a Web site. 
//							A subclass of HttpServlet must override at least one method, usually one of these...... 			
//	METHODS:
//
//	CS_1.  		• doGet() 		
//							
//							Called by the server (via the service method) to allow a servlet to handle a GET request. 
//						
//							The GET method should also be idempotent, meaning that it can be safely repeated. Sometimes making a method safe also makes it idempotent. For example,
//							repeating queries is both safe and idempotent, but buying a product online or modifying data is neither safe nor idempotent. 
//
//							If the request is incorrectly formatted, doGetreturns an HTTP "Bad Request" message. 
//							• doPost 				for HTTP POST requests ????????????????
//							• doPut 				for HTTP PUT requests ???????????????????????
//							• doDelete 				for HTTP DELETE requests ??????????????????
//							• init and destroy		to manage resources that are held for the life of the servlet ??????????????????????
//.							• getServletInfo 		which the servlet uses to provide information about itself ??????????????????
//
//							(* these functions can be over-ridden later to take on more ....or ....take on different functionality.)??????????????????
//
//							also..implements.........................................................CommonServletInterface to?????????????????????????
//
//	CS_2.		getSession
//							HttpSession getSession()
//							Returns the current session associated with this request,or if the request does not have a session, creates one. 
//							Returns:the HttpSession associatedwith this request
//
//	CS_3. 		getAttribute
//							java.lang.Object getAttribute(java.lang.String name)
//							Returns the object bound with the specified name in this session, or null if no object is bound under the name. 
//
//	CS_4. 		setAttribute
//							void setAttribute(java.lang.String name, java.lang.Object o)
//							Stores an attribute in this request.Attributes are reset between requests. This method is mostoften used in conjunction with RequestDispatcher. 
//
//	CS_5.		getInstance()	...see...Singleton emp.util.Singleton.getInstance()
//
//	CS_6. 		getTitle()		...see...String emp.util.Singleton.getTitle() 
//
//	CS_7. 		getRequestDispatcher
//							RequestDispatcher getRequestDispatcher(java.lang.String path)
//							Returns a RequestDispatcher object that acts as a wrapper for the resource located at the given path.
//							A RequestDispatcher object can be used to forward a request to the resource or to include the resource in a response.
//							The resource can be dynamic or static. 
//
//	CS_8. 		forward()
//							void forward(ServletRequest request,ServletResponse response)throws ServletException,
//							java.io.IOException
//							Forwards a request from a servlet to another resource (servlet, JSP file, orHTML file) on the server. 
//							This method allows one servlet to do preliminary processing ofa request and another resource to generate the response. 
//
//
//	CS_9. 		error()   	...see..HttpServlet ???????????????????
//
//
//	CS_10. 		delete()	...see..HttpServlet ????????????????????
//
//
//	CS_11. 		view()  	...see..HttpServlet ?????????????????????
//
//
//	CS_12.		maintain()  ...see..HttpServlet ?????????????????????
//
//
//
//
//--R I G H T   S I D E  C O D E   B L O C K   T R A C E   E X E C U T I O N ------------------------------------------------------------//		
//
//Pre-Condition:
//
//<!-- CommonServlet.java 			TRACE EXECUTION  (from top to bottom)          CATEGORIES LISTED IN THE RIGHT SIDE COMMENT AREA:						-->	
//<!-- 																																						-->	
//<!--#### PRE- CONDITION ##################################################################################################								-->
//<!--##												   																  ##								-->	
//<!--##																											      ##								-->	
//<!--##	     																										  ##								-->	
//<!--##												   																  ##								-->	
//<!--##																											      ##								-->	
//<!--######################################################################################################################								-->	
//<!--																																						-->			 																																		
//				CS_A)...  	needed imports
//
//				CS_B_0)...  url suffix for this rendered page and java string variable initialized
//
//				CS_D)...  	doGet()	DRY overide function defined:
//
// 									##1 	jump....CS_D_1)... 				request objects getRequestDispatcher'S member is set with conditional argument... 
//
//				CS_E)...  	delete()	DRY overide function defined:
//
//									##2		jump....CS_E_2)...				LOADS THE ERROR WEB PAGE...sets object request's getRequestDispatcher attribute to a string url path 
//
//				CS_F)...  	error()			DRY overide function defined:(empty method )
//
//				CS_G)...  	view()	DRY overide function defined:(empty method )
//
//				CS_H)...   	maintain()DRY overide function defined:(empty method )---->>------------->>------------>>------------->>  CS_?)... 
//
//Post-Condition:
//<!--																																						-->	
//<!--#### POST-CONDITION ##################################################################################################								-->
//<!--##												   																  ##								-->	
//<!--##												   																  ##								-->	
//<!--##												       															  ##								-->	
//<!--######################################################################################################################								-->	
//<!--																																						-->	*/
//
//
//
//
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////																															//
import java.io.IOException;																								//	CS_A)... Signals that an I/O exception of some sort has occurred. 
																														//	CS_A)...		...a general class of exceptions produced by failed or interrupted I/O operations.
import javax.servlet.ServletException;  																				//	CS_A)... Defines a general exception a servlet can throw when item counters difficulty
import javax.servlet.annotation.WebServlet;																				//  CS_A)... Annotation used to declare a servlet.
import javax.servlet.http.HttpServlet;																					//  CS_A)... Provides an abstract class to be subclassed to createan HTTP servlet suitable for a Web site
import javax.servlet.http.HttpServletRequest;																			//  CS_A)... Extends the ServletRequest interfaceto provide request information for HTTP servlets.
import javax.servlet.http.HttpServletResponse;																			//  CS_A)... The servlet container creates an HttpServletResponse objectand passes 
																														//  CS_A)...		...it as an argument to the servlet's service methods(doGet, doPost, etc).
																														//  CS_A)...
import emp.util.Singleton;																								//  CS_A)... for demonstration purposes only of a singleton class (does nothing)
																														//
																														//	CS_B)... Annotation used to declare a servlet.	
@WebServlet(description = "This servlet will show the list of available modules", urlPatterns = { "/start" })			//  CS_B_0)... 		Names the /url patterns associated with this servlet to be...... "/start"
																														//
																														//
																														//
public class CommonServlet extends HttpServlet implements CommonServletInterface {						 				//	CS_C)...  CommonServlet class defined( extendED FROM  HttpServlet )
																														//	CS_C)				...includes a very simple interface ex.
	private static final long serialVersionUID 		= 1L; 																// 	CS_C)... The serialVersionUID is used as a version control in a
																														// 					Serializable class.
																														// 					If you do not explicitly declare a serialVersionUID, JVM will
																														//					do it for you automatically, based
																														// 					on various aspects of your Serializable class, as described
																														//					in the Java(TM) Object Serialization Specification.
																														//	CS_C)... java string variable take on string common reusable values??????????????????????/		
	public static final String SESSION_USER_TOKEN 	= "sessionUserToken";												//	CS_C)... sessionUserToken
	public static final String TITLE 				= "title";															//  CS_C)... title
	public static final String MESSAGE 				= "message";														//	CS_C)... message
	public static final String OPR 					= "opr";															//	CS_C)... opr
	public static final String EMPLOYEES 			= "EMPLOYEES";														//	CS_C)... EMPLOYEES
	public static final String EMPLOYEE 			= "EMPLOYEE";														//	CS_C)... EMPLOYEE
																														//																													//
	@Override																											//  CS_D)... Overide DRY method def: doGet()
	protected void doGet(HttpServletRequest request, HttpServletResponse response)										// 	CS_D)... doGet(makes HttpServletRequest request, takes HttpServletRequest response )
			throws ServletException, IOException {																		//	CS_D)... 				throws  2 exceptions:      ServletException,  IOException{
		Object obj = request.getSession().getAttribute(SESSION_USER_TOKEN);												//	CS_D)... 		Creates new obj = (from above) gotten request's of gotten Session of gotten attribute w/i SESSION_USER_TOKEN  
		request.setAttribute(TITLE, Singleton.getInstance().getTitle());												//	CS_D)... 		request object's TITLE attribute is set 
		request.getRequestDispatcher(obj != null ? "/WEB-INF/views/home.jsp" : "/WEB-INF/views/error.jsp")//##1 JUMP OUT....CS_D_1)... 					request objects getRequestDispatcher'S member is set with conditional argument... 
				.forward(request, response);																			//	CS_D)... 				(if....the obj is not null..(hence there is an avaailable SESSION_USER_TOKEN)..then set the string arguments to ..."/WEB-INF/views/home.jsp"
	}																													//	CS_D)... 				 else..set the string arguments to ..."/WEB-INF/views/error.jsp" and Forward  another resource??????
																														//	CS_D)... }	
																														//
	protected void error(HttpServletRequest request, HttpServletResponse response, String title)						// 	CS_E)... error(makes a HttpServletRequest request, takes  HttpServletResponse response, takes a string)
			throws ServletException, IOException {																		//	CS_E)... 				throws (Servlet and IO) exceptions
		request.setAttribute(TITLE, title);																				//	CS_4.		sets object request's TITLE attribute to string
		request.getRequestDispatcher("/WEB-INF/views/error.jsp").forward(request, response);  			 //##2  JUMP OUT....CS_E_2)...				LOADS THE ERROR WEB PAGE...sets object request's getRequestDispatcher attribute to a string url path and forwards to ???????????????
	}																													//	CS_E)...}
																														//
	@Override																											// 	CS_F)... Overide DRY method def:  delete()
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	// 	CS_F)... delete(makes a HttpServletRequest request, takes  HttpServletResponse response)throws 2{
		// TODO Auto-generated method stub																				// 	CS_F)... 		????????????empty overide???????????/
	}																													// 	CS_F)... }
																														// 
	@Override																											// 	CS_G)... Overide DRY method def:  view()
	public void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	//	CS_G)... view(makes a HttpServletRequest request, takes  HttpServletResponse response)	throws																									// 	CS_G)...}
		// TODO Auto-generated method stub																				//	CS_G)... 		????????????empty overide???????????/																													//
	}																													//	CS_G)... }
																														//
	@Override																											// 	CS_H)... Overide DRY method def:  maintain()
	public void maintain(HttpServletRequest request, HttpServletResponse response)										//	CS_H)... maintain(makes a HttpServletRequest request, takes  HttpServletResponse response)
			throws ServletException, IOException {																		//	CS_H)... 		throws 2
		// TODO Auto-generated method stub																				//	CS_H)... 																													//
	}																													//	CS_H)... }																												//
}																														//CS_C)...}	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////																														
