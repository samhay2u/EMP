package emp; //essentially defines the file as an EMP project package to be used there exclusively

////////////////////////////////////////////////////////////////////////////////////////////////////////////

//general JDBC format
//
//1.		get a connection to database
//					ex...Connection myConn = DriverManager.getConnection(url, user, password)
//
//2. 		create a statement
//					ex...Statement myStmt = myConn. createStatement();
//
//3. 		execute a SQL querry
//					ex...			string sql = "insert into employee  "
//									+ "(last_name, first_name, email)"
//									+ "values(' Brown', 'David', 'david.brown@foo.com')")
//
//									...BUT....what is missing here in these 3 simple steps?
//
//					answer...       a webserver that push data to and from a web page
//									so thats why we need to wrap all that above in java servlet classes first
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

//
//
//
//

import java.io.IOException;
//
//
//
//
import java.io.PrintWriter;

//apache library class servlet
//
//
//
import javax.servlet.ServletException;
//apache library class servlet
//
//
//
import javax.servlet.annotation.WebServlet;
//apache library class servlet
//
//
//
import javax.servlet.http.HttpServlet;
//apache library class servlet
//
//
//
import javax.servlet.http.HttpServletRequest;
//apache library class servlet
//
//
//
import javax.servlet.http.HttpServletResponse;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////S
//Notes And KEYWORDS
//******************************************************************************************************************* 									
// @WebServlet(description = 			-webservlet creates servlets allows programer to write a backend description in quotes
// 
//  urlPatterns = { "/start" }			-this is the /start extension that ends up at the end of the start pages url that the @webservlet
//  									 maps
//  
//  public class						-public is a Java keyword which declares a member's access as public. Public
//   									members are visible to all other classes. This means that any other class can 
//   									access a public field or method. Further, other classes can modify public fields
//   								    unless the field is declared as final .
//  
//  
//  CommonServlet extends HttpServlet	- DRY technique brings over inheritables from commonServlet into a specific 
//  										defined servlet
//******************************************************************************************************************* 									
//  So the following statements Say:
//
//**
// *  This common servlet contains common reusable methods for database
// */
//
//  		create a connection to the internet via @webservlet a generated webpage that is generic to the PIS project and do so by appending to
//			its url with ..../start..... 
//  		then
// 				extend over to this CommonServlet from the httpServlet neccessary protocols to have a web servlet that publishes to the intenet a webpage  
//  
//  			variables are then set up to begin this process next
//
//
//  DRY CONVENTIONS
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
@WebServlet(description = "This servlet will show the list of available modules", urlPatterns = { "/start" })
public class CommonServlet extends HttpServlet {
	// PRIVATE VARIABLE DECLARATIONS ONLY USEFULL WITHIN THIS FUNCTION
	private static final long serialVersionUID = 1L; // The serialVersionUID is used as a version control in a
														// Serializable class.
														// If you do not explicitly declare a serialVersionUID, JVM will
														// do it for you automatically, based
														// on various aspects of your Serializable class, as described
														// in the Java(TM) Object Serialization Specification.

	////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Notes And KEYWORDS
	// *
	//////////////////////////////////////////////////////////////////////////////////////////////////////// *********************************************************************************************************************
	/// so it all says:
	//
	//
	//
	//
	//
	//
	////////////////////////////////////////////////////////////////////////////////////////////////////////// */
	public static void header(String title, Object obj, PrintWriter out) {
		out.println("<!DOCTYPE html>"); // required beginning html out file code
		out.println("<html>");
		out.println("<head>"); // head tag set up
		out.println("<meta charset=\"ISO-8859-1\">");
		out.println("<meta http-equiv=\"cache-control\" content=\"no-cache\" />"); // html browser configurations
		out.println("<meta http-equiv=\"expires\" content=\"0\" />");
		out.println("<meta http-equiv=\"pragma\" content=\"no-cache\" />");
		out.println(
				"<link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\" type=\"text/css\">");
		out.println("<link rel=\"stylesheet\" href=\"/EMP/css/site.css\" type=\"text/css\" />");
		out.println("<title>Employee Data Management System</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("    <a class=\"text-color-employee\"href=\"/EMP\">Logout</a>");
		out.println("	<h1 align=\"center\">" + title + "</h1>");
		out.println("	  <section class=\"outer-wrapper\">"); // begining section tag
		out.println("	    <div class=\"inner-wrapper\">");
		out.println("	      <div class=\"container\">");
		out.println("	        <div class=\"row\">");
		if (obj != null && obj instanceof User) {
			User user = (User) obj;
			out.println("           <div class=\"success\">Welcome " + user.getName() + "</div>");
		}
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	// Notes And KEYWORDS
	// *******************************************************************************************************************
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	///////////////////////////////////////////////////////////////////////////////////////////////////////// *******************************************************************************************************************
	// so it all says:
	//
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static void footer(PrintWriter out) {
		out.println("	        </div>");
		out.println("	      </div>");
		out.println("	    </div>");
		out.println("   </section>");
		out.println("</body>");
		out.println("</html>");
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	//
	// Notes And KEYWORDS
	// *******************************************************************************************************************
	// *
	/// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	// *
	///////////////////////////////////////////////////////////////////////////////////////////////////////// *******************************************************************************************************************
	// so it all says:
	//
	//
	//
	//
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////// */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Object obj = request.getSession().getAttribute("SESSION_USER_TOKEN");
		header("Employee Information System", obj, out);
		out.println("<div class=\"text-center\">");
		out.println("  <a class=\"text-color-employee\" href=\"/EMP/employees\">Employees</a>");
		out.println("  <br/>");
		out.println("</div>");
		footer(out);
	}

}// close servlet
