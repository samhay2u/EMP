package emp.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import emp.model.EmployeeDAO;

public class Factory {

	private final static String SESSION_EMPLOYEE_DAO = "sessionEmployeeDao";

	public static EmployeeDAO getEmployeeDAO(HttpServletRequest request) {
		// Get the session object
		HttpSession session = request.getSession();

		// Get the patient dao object if exists
		EmployeeDAO employeeDAO = (EmployeeDAO) session.getAttribute(SESSION_EMPLOYEE_DAO);

		// If patien dao does not exist
		if (employeeDAO == null) {
			// Create the object
			employeeDAO = new EmployeeDAO();

			// Save it in the session
			session.setAttribute(SESSION_EMPLOYEE_DAO, employeeDAO);
		}

		// Return patient dao object
		return employeeDAO;
	}

}
