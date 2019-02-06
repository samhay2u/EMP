package emp;

/////////////////////////////////////////////////////////////////////////////////
//general JDBC format
//1.get a connection to database
//ex...Connection myConn = DriverManager.getConnection(url, user, password)
//2. create a statement
//ex...Statement myStmt = myConn. createStatement();
//3. execute a SQL querry
//ex...string sql = "insert into employee  "
//+ "(last_name, first_name, email)"
//+ "values(' Brown', 'David', 'david.brown@foo.com')")
//...BUT....what is missing here in these 3 simple steps?
//
//answer...       a webserver that push data to and from a web page
//so thats why we need to wrap all that above in java servlet classes first
////////////////////////////////////////////////////////////////////////////////
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.model.EmployeeDAO;
import emp.pojo.Employee;
import emp.util.Factory;

/**
 * Servlet implementation class employeessServlet
 */
/////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////
@WebServlet(description = "This servlet will maintain employee data", urlPatterns = { "/employees" })

public class EmployeeServlet extends CommonServlet {

	private static final long serialVersionUID = 1L;

	private static final String ERROR_TITLE = "Employee Data";

	// DO GET
	// getting text from the URL
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Object obj = request.getSession().getAttribute(SESSION_USER_TOKEN);

		// pushes the header html out using the java function from server library
		// classes above
		// pushes the header html out using the java function from server library
		// classes above
		request.setAttribute(TITLE, "Employee Data (<a href=\"/EMP/start\">Index</a>)");
		if (obj != null) {
			// sets up a string object and Get the operation type from the request parameter
			String opr = request.getParameter(OPR);

			// calls the add/edit based on (opr) value
			if ("add".equals(opr) || "edit".equals(opr)) {
				maintain(opr, request, response); // calls the add/edit form
			}
			// calls the delete based on (opr) value
			else if ("delete".equals(opr)) {
				delete(request, response);
			}
			// calls the view based on (opr) value
			else {
				view(request, response);
			}
		} else {
			error(request, response, ERROR_TITLE);
		}
	}

	////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	// ....basic format a java servlet function template
	// ....(ify_whiley_for)
	// (try)
	// (connect)
	// (create)
	// (set)
	// (excecute)
	// (catch)
	// (finnaly)
	//
	//
	////////////////////////////////////////////////////////////////////////////////////////////
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("emp_no");
		String message = "Employee Record Number " + id + " deleted successfully";
		String opr = request.getParameter("opr");

		EmployeeDAO employeeDAO = Factory.getEmployeeDAO(request);
		if ("delete".equals(opr)) {
			if (!employeeDAO.delete(id)) {
				message = "Employee Record Number " + id + " delete failed";
			}
		}
		request.setAttribute(MESSAGE, message); // Setting the message in the request attribute

		// Show the updated information
		view(request, response);
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	// so it all says:
	//
	//
	//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	public void maintain(String opr, HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean isEdit = "edit".equals(opr);

		// if the opr html querry parametr up in the url has "opr=edit" representation
		// then do all this below
		if (isEdit) {
			EmployeeDAO employeeDAO = new EmployeeDAO();
			request.setAttribute(EMPLOYEE, employeeDAO.retreive(request.getParameter("emp_no")));
		}

		request.getRequestDispatcher("/WEB-INF/views/maintain.jsp").forward(request, response);
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	// so it all says:
	//
	//
	//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	public void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeeDAO employeeDAO = Factory.getEmployeeDAO(request);
		request.setAttribute(EMPLOYEES, employeeDAO.retreiveAll());
		request.getRequestDispatcher("/WEB-INF/views/view.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	// so it all says:
	//
	//
	//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Object obj = request.getSession().getAttribute(SESSION_USER_TOKEN);

		if (obj != null) {
			String emp_No = request.getParameter("EmployeeNumber");
			String message = "Data added successfully";
			String opr = request.getParameter("opr");
			// public Employee(String emp_No, String birth_date, String first_name, String
			// last_name, String gender, String hire_date) {
			Employee employee = new Employee(emp_No, request.getParameter("DOB"), request.getParameter("FirstName"),
					request.getParameter("LastName"), request.getParameter("Gender"), request.getParameter("HireDate"));
			EmployeeDAO employeeDAO = Factory.getEmployeeDAO(request);
			if ("addSubmit".equals(opr)) {

				if (!employeeDAO.add(employee)) {
					message = "No Data has been added";
				}
			}

			else if ("editSubmit".equals(opr)) {
				message = "Employee Record Number " + emp_No + " edited successfully";
				if (!employeeDAO.edit(employee)) {
					message = "Employee Record Number " + emp_No + " edit failed";
				}
			}

			request.setAttribute(MESSAGE, message); // Setting the message in the request attribute

			// Show the updated information
			doGet(request, response);
		} else {
			error(request, response, ERROR_TITLE);
		}
	}

}