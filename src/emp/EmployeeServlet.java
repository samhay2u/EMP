package emp;																									//
																												//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//EmployeeServlet.java 	
//
//--G E N E R A L  N O T E S -----------------------------------------------------------------------------
//
//	JDBC FORMAT:
//
//		1.		get a connection to database
//					ex...Connection myConn = DriverManager.getConnection(url, user, password)
//		2. 		create a statement
//					ex...Statement myStmt = myConn. createStatement();
//		3.		execute a SQL querry
//					ex...string sql = "insert into employee  "
//					+ "(last_name, first_name, email)"
//					+ "values(' Brown', 'David', 'david.brown@foo.com')")
//
//				...BUT....what is missing here in these 3 simple steps?
//
//				answer...       a webserver that push data to and from a web page
//				so thats why we need to wrap all that above in java servlet classes first??????????????
//
//
//--C L A S S   D E F I N I T I O N S   and   M E T H O D S   U S E D ---------------------------------------
//
//	CLASSES:
//
//			classES.   EmployeeServlet  
//							extended from CommonServlet which is extended from httpServlet
//							-gets HttpServletRequest request, HttpServletResponse response w/....doGet() function
//							-gets the session getSession()
//
//
//
//  METHODS:
//
//			ES_1.		doGet()
//							Called by the server (via the service method) to allow a servlet to handle a GET request. 
//
//							The GET method should also be idempotent, meaning that it can be safely repeated. Sometimes 
//							making a method safe also makes it idempotent. For example,
//							repeating queries is both safe and idempotent, but buying a product online or modifying 
//							data is neither safe nor idempotent. 
//
//							If the request is incorrectly formatted, doGet returns an HTTP "Bad Request" message. 
//							• doPost 				for HTTP POST requests ????????????????
//							• doPut 				for HTTP PUT requests ???????????????????????
//							• doDelete 				for HTTP DELETE requests ??????????????????
//							• init and destroy		to manage resources that are held for the life of the servlet ??????????????????????
//							• getServletInfo 		which the servlet uses to provide information about itself ??????????????????
//
//							(* these functions can be over-ridden later to take on more ....or ....take on different functionality.)????????????
//
//							also..implements.........................................................CommonServletInterface to??????????????????
//
//			ES_2.		getSession()
//							HttpSession getSession()
//							Returns the current session associated with this request,or if the request does 
//							not have a session, creates one. 
//							Returns:the HttpSession associated with this request
//
//			ES_3.		getAttribute()
//							java.lang.Object getAttribute(java.lang.String name)
//							Returns the object bound with the specified name in this session, or null if no object 
//							is bound under the name. 
//							Parameters:name - a string specifying the name of the object Returns:the object with the 
//							specified name 
//
//			ES_4.		setAttribute()
//							void setAttribute(java.lang.String name,
//        					java.lang.Object o)
//							Stores an attribute in this request.Attributes are reset between requests. 
//							This method is most often used in conjunction with RequestDispatcher. 
//		
//			ES_5		delete(
//
//			ES_6.		maintain()
//
//			ES_7.		retreive()
//
//			ES_8. 		getParameter()
//
//			ES_9.		getEmployeeDAO()

//			ES_9.		View()
//
//			ES_10.		doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, java.io.IOException

//							Called by the server (via the service method)to allow a servlet to handle a POST request.
//							The HTTP POST method allows the client to senddata of unlimited length to the Web server
//							a single timeand is useful when posting information such ascredit card numbers. 
//							When overriding this method, read the request data,write the response headers, get the response's 
//							writer or outputstream object, and finally, write the response data. It's best to include content type and encoding.
//							When using a PrintWriter object to return the response, set thecontent type before accessing the PrintWriter object. 
//
//							The servlet container must write the headers before committing the response,
//							because in HTTP the headers must be sent before the response body. 
//
//							Where possible, set the Content-Length header (with the ServletResponse.setContentLength(int)
//							method),to allow the servlet container to use a persistent connection to return its response to the client, improving performance.The content length is automatically set if the entire response fitsinside the response buffer. 
//
//							When using HTTP 1.1 chunked encoding (which means that the responsehas a Transfer-Encoding header),
//							do not set the Content-Length header. 
//
//							This method does not need to be either safe or idempotent.Operations requested through POST
//							can have side effects forwhich the user can be held accountable, for example,updating stored data or buying items online. 
//
//							If the HTTP POST request is incorrectly formatted, doPost returns an HTTP "Bad Request" message. 
//
//
//							Parameters:req - an HttpServletRequest object thatcontains the request the 
//							client has madeof the servletresp - an HttpServletResponse object thatcontains the response the servlet sendsto the client 
//
//--R I G H T   S I D E  C O D E   B L O C K   T R A C E   E X E C U T I O N --------------------------------------------------
//
//Pre-Condition:
//
//
//
//
//  
// 					
//			ES_A)...  needed imports
//
//			ES_B)...  WEBSERVLET url suffix for this rendered page  initialized TO BE ...."/employees"
//
//			ES_C)...  EmployyeeServlet class and DATA members and user sesionIN defined:
//
//			ES_D)...  EmployyeeServlet class function :		doGet()
//
//// ##3  JUMP OUT..ES_D_1)..
//
//					ES_E)...  EmployyeeServlet class function :		delete()
//
//					ES_F)...  EmployyeeServlet class function :		maintain()
//							#1 	  jump......ES_F_3)...       		redirect/open maintain.jsp 
//
//					ES_G)...  EmployyeeServlet class function :		view()
// 							#2	  jump....	ES_G_1)...    			pass a view.jsp path as a string argument to to the getRequestDispatcher() of the request object
//
//					ES_H)...  EmployyeeServlet class function :		doPost()??????????????????????????????????????????????????????????
//Post-Condition:
//
//
//
//
//
//
//
//																													ES_??) CATEGORIES LISTED IN THIS RIGHT SIDE COMMENT AREA:
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
import java.io.IOException;																						//	ES_A)...  imp. class of exceptions produced by failed or interrupted I/O operations.
import javax.servlet.ServletException;																			//	ES_A)...  imp. general exception a servlet can throw when iteM counters difficulty
import javax.servlet.annotation.WebServlet;																		//	ES_A)...  imp. Annotation used to declare a servlet.
import javax.servlet.http.HttpServlet;																			//	ES_A)...  imp. Provides an abstract class to be subclassed to create an HTTP servlet suitable for a Web site
import javax.servlet.http.HttpServletRequest;																	//	ES_A)...  imp. Extends the ServletRequest interfaceto provide request information for HTTP servlets.
import javax.servlet.http.HttpServletResponse;																	//	ES_A)...  imp. Extends the ServletResponse interface to provide HTTP-specific functionality in sending a response
import emp.model.EmployeeDAO;																					//	ES_A)...  imp. EmployeeDAO from source file dir
import emp.pojo.Employee;																						//	ES_A)...  imp. Employee pojo from source file dir
import emp.util.Factory;																						//	ES_A)...  imp. Factory??????????????????????????????????????????????

/**
 * Servlet implementation class employeessServlet
 */
@WebServlet(description = "This servlet will maintain employee data", urlPatterns = { "/employees" })			//	ES_B)...  Names the /url patterns associated with this servlet to be...... "/employees"
																												//
public class EmployeeServlet extends CommonServlet {															//	ES_C)...  Create new EmployeeServlet class that inherits common repeated DRY concepts from parent class CommonServlet
	private static final long serialVersionUID 	= 1L;															//	ES_C)...  	  serialize this open session with the server ??????????????/
	private static final String ERROR_TITLE 	= "Employee Data";												//	ES_C)...  	  initialize ERROR_TITLE 
																												//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 								//	ES_D)...  	 protected(unmutable to a child????)get HttpServletRequest requests and responses, 
			throws ServletException, IOException {																//	ES_D)...		 throws 2
		Object obj = request.getSession().getAttribute(SESSION_USER_TOKEN);										//	ES_D)...  		 A newly created obj = go get the string associated with SESSION_USER_TOKEN of this session's commonServlet
																												//	ES_D)...  		
		request.setAttribute(TITLE, "Employee Data (<a href=\"/EMP/start\">Index</a>)");		  // ##3  JUMP OUT..ES_D_1)...		 returns to the start home screen
																												//	ES_D)...
		if (obj != null) {																						//	ES_D)...    	 if(obj has something in it){   
			String opr = request.getParameter(OPR);																//	ES_D)...		 new string var opr =  bind whatever is in commonservlet class "OPR" data member to the request object
																												//	ES_D)...		 
			if ("add".equals(opr) || "edit".equals(opr)) {														//	ES_D)...		 if(opr == "add" or opr =="edit" ) 
				maintain(opr, request, response); 																//	ES_D)...			calls the add/edit form			
			}																									//	ES_D)...		 }
																												//	ES_D)...
			else if ("delete".equals(opr)) {																	//	ES_D)...		 else if(opr = "delete")
				delete(request, response);																		//	ES_D)...				then call delete()
			}																									//	ES_D)...		 }
																												//	ES_D)...
			else {																								//	ES_D)...		 else {
				view(request, response);																		//	ES_D)...			call view() function
			}																									//	ES_D)...		   }
		} else {																								//	ES_D)...		 } else  default to viewing the table data with no OPR selected {??????????????????????
			error(request, response, ERROR_TITLE);																//	ES_D)...			execute error()
		}																										//	ES_D)...		 }
	}																											//	ES_D)...   }
																												//
																												//																											
	public void delete(HttpServletRequest request, HttpServletResponse response) 								//  ES_E)... delete()...  really call the delete() from from the employeeDAO class to handle the deleting{
			throws ServletException, IOException {																//	ES_E)...		   but also displays success or  fail messages associated with either case once this has occured 		
		String id 				= request.getParameter("emp_no");												//	ES_E)...  		servlet string vars take on values
		String message 			= "Employee Record Number " + id + " deleted successfully";						//	ES_E)...		servlet string vars take on values
		String opr 				= request.getParameter("opr");													//	ES_E)...		servlet string vars take on values
		EmployeeDAO employeeDAO = Factory.getEmployeeDAO(request);												//	ES_E)...		object created = gotten request object associate getEmployeeDAO() call///why factory
																												//	ES_E)...
		if ("delete".equals(opr)) {																				//	ES_E)...		if (opr var == "delete"){	
			if (!employeeDAO.delete(id)) {																		//	ES_E)...			and if (calling the delete function from  employeeDAO IS NOT successful){
				message 			= "Employee Record Number " + id + " delete failed";						//	ES_E)...				set an error (message) indicating so 
			}																									//	ES_E)...   		 }
		}																										//	ES_E)...      }
		request.setAttribute(MESSAGE, message); // Setting the message in the request attribute					//	ES_E)...	 passed request objects now set to = either of the 2 (message) setings above  
		view(request, response);																				//	ES_E)...	 call the view function (with args request and response)
	}																											//	ES_E)...   }
																												//
																												//
																												//
	public void maintain(String opr, HttpServletRequest request, HttpServletResponse response) 					//	ES_F)...  maintain()...  takes a string var, takes a request, takes a response{
			throws ServletException, IOException {																//	ES_F)...   			throws 2 fail : ServletException, IOException
		boolean isEdit		= "edit".equals(opr);																//	ES_F)...		sets a bool var = the opr var ( that is also set to a string: "edit"																				//	ES_F)...
		if (isEdit) {																							//	ES_F)...		if ( stuff exist in this variable  isEdit){
			EmployeeDAO employeeDAO 	= new EmployeeDAO();													//	ES_F)...			create a new object employeeDAO	
			request.setAttribute(EMPLOYEE, employeeDAO.retreive(request.getParameter("emp_no")));				//	ES_F)...			set EMPLOYEE = retrieved employeeDAO's "emp_no" (within the HttpServletRequest.request object)
		}																										//	ES_F)...		}
																												//	ES_F)...
		request.getRequestDispatcher("/WEB-INF/views/maintain.jsp").forward(request, response);	// ##1 	  jump......ES_F_3)...       		redirect/open maintain.jsp 
	}																											//	ES_F)...  }				...(within the HttpServletRequest.request object)...with a string URL path to be used
																												//
																												//
																												//
																												//
	public void view(HttpServletRequest request, HttpServletResponse response) 									//	ES_G)...  view()...  calls the retrieveAll function in another class : employeeDAO.java{
			throws ServletException, IOException {																//	ES_G)...				throw 2 fail exceptions  ServletException, IOException
		EmployeeDAO employeeDAO 		= Factory.getEmployeeDAO(request);										//	ES_G)...			creates a new factory object using the factory method getEmployeeDAO( with passed request object arg )
		request.setAttribute(EMPLOYEES, employeeDAO.retreiveAll());												//	ES_G)...			set request object to = eveything that is retrieved from the factory method retrieve all in this new factory object.
		request.getRequestDispatcher("/WEB-INF/views/view.jsp").forward(request, response);	   // ##2	  jump......ES_G_1)...    		pass a view.jsp apath as a string argument to to the getRequestDispatcher() of the request object  //////////forward??????????
	}																											//	ES_G)...	}
																											
																												
																													
																													
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse///
	 *      response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)								//	ES_H)...  doPost()....
			throws ServletException, IOException {																//	ES_H)...     throws 2: ServletException, IOException  {
		Object obj 					= request.getSession().getAttribute(SESSION_USER_TOKEN);					//	ES_H)...		create a reusable  object obj =  SESSION_USER_TOKEN of the HttpServletRequest type "request" object
																												//	ES_H)...
		if (obj != null) {																						//	ES_H)...		if (obj has something in it){
			String emp_No 			= request.getParameter("EmployeeNumber");									//	ES_H)...			set  local string  var emp_No 	with whatever is in the front maintenace for's html form value  "EmployeeNumber"
			String message 			= "Data added successfully";												//	ES_H)...			set  local string  var message 	for  user's success  
			String opr 				= request.getParameter("opr");												//	ES_H)...			set  local string  var opr 		to whatever is in the read in html var "OPr" coming off the front maintenance entry form 
			Employee employee 		= new Employee(emp_No, 	request.getParameter("DOB"), 						//	ES_H_2).			create a new object employee = with ( the "DOB" 	   assigned to a specific employee  emp_NO)																									//	ES_H)
															request.getParameter("FirstName"),					//	ES_H_2).												( the "FirstName"  assigned to a specific employee  emp_NO)					
															request.getParameter("LastName"), 					//	ES_H_2).												( the "LastName"   assigned to a specific employee  emp_NO)
															request.getParameter("Gender"), 					//	ES_H_2).												( the "Gender"     assigned to a specific employee  emp_NO)
															request.getParameter("HireDate"), 					//	ES_H_2).												( the "HireDate"   assigned to a specific employee  emp_NO)
															request.getParameter("Salary"));					//	ES_H_2).												( the "Salary"     assigned to a specific employee  emp_NO)
																												//	ES_H)...
			EmployeeDAO employeeDAO = Factory.getEmployeeDAO(request);											//	ES_H_3).			create a new employeeDAO = 	call getEmployeeDAO(with passed request object) from the factory class		
																												//	ES_H)...			
			if ("addSubmit".equals(opr)) {																		//	ES_H)...			if (opr from above = "addSubmit" ){
																												//	ES_H)...
				if (!employeeDAO.add(employee)) {																//	ES_H)...				and ..if ( the newly gotten employee above in ES_H_2) CANNOT be ADDED BY CALLING THE EDIT FUNCTION IN THE employeeDAO)	 ){
					message 		= "No Data has been added";													//	ES_H)...					set user error message = "No Data has been added" 
				}																								//	ES_H)...				}
			}																									//	ES_H)...			}
																												//	ES_H)...
			else if ("editSubmit".equals(opr)) {																//	ES_H)...			else if  (opr from above = "addSubmit" ){
				message 			= "Employee Record Number " + emp_No + " edited successfully";				//	ES_H)...				 message = success message
				if (!employeeDAO.edit(employee)) {																//	ES_H)...				    if (the newly gotten employee above in ES_H_2) CANNOT be EDITED BY CALLING THE EDIT FUNCTION IN THE employeeDAO)	 ){
					message 		= "Employee Record Number " + emp_No + " edit failed";						//	ES_H)...						set user error message = "No Data has been added"
				}																								//	ES_H)...				}
			}																									//	ES_H)...			}
																												//	ES_H)...
			request.setAttribute(MESSAGE, message); 															//	ES_H)... 			re-Setting the message in the request attribute to clear out the old m,essage
			doGet(request, response);																			//	ES_H)...			re-calls the doGet() function above which RE-LOADS  A FRESH  start page
																												//	ES_H)...	
		} else {																								//	ES_H)...			} else {
			error(request, response, ERROR_TITLE);																//	ES_H)...			     call error() function WHICH ULTIMATELY  LOADS THE ERROR WEB PAGE...
		}																										//	ES_H)...			}
	}																											//	ES_H)...		}
}																												//	ES_H)...}