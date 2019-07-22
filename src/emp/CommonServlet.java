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

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.util.Singleton;

@WebServlet(description = "This servlet will show the list of available modules", urlPatterns = { "/start" })
public class CommonServlet extends HttpServlet implements CommonServletInterface {
	// PRIVATE VARIABLE DECLARATIONS ONLY USEFULL WITHIN THIS FUNCTION
	private static final long serialVersionUID 		= 1L; 	// The serialVersionUID is used as a version control in a
															// Serializable class.
															// If you do not explicitly declare a serialVersionUID, JVM will
															// do it for you automatically, based
															// on various aspects of your Serializable class, as described
															// in the Java(TM) Object Serialization Specification.

	public static final String SESSION_USER_TOKEN 	= "sessionUserToken";
	public static final String TITLE 				= "title";
	public static final String MESSAGE 				= "message";
	public static final String OPR 					= "opr";

	public static final String EMPLOYEES 			= "EMPLOYEES";
	public static final String EMPLOYEE 			= "EMPLOYEE";


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Object obj = request.getSession().getAttribute(SESSION_USER_TOKEN);
		request.setAttribute(TITLE, Singleton.getInstance().getTitle());
		request.getRequestDispatcher(obj != null ? "/WEB-INF/views/home.jsp" : "/WEB-INF/views/error.jsp")
				.forward(request, response);
	}

	protected void error(HttpServletRequest request, HttpServletResponse response, String title)
			throws ServletException, IOException {
		request.setAttribute(TITLE, title);
		request.getRequestDispatcher("/WEB-INF/views/error.jsp").forward(request, response);
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	@Override
	public void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void maintain(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
}
