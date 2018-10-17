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
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class employeessServlet
 */
//SET UP THE SERVLET PAGE URL ADDRESS
@WebServlet(description = "This servlet will maintain employee data", urlPatterns = { "/employees" })

public class EmployeeServlet extends CommonServlet {
	
	private static final long serialVersionUID = 1L;
	//DO GET
	//getting text from the URL
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// links the http servlet getWriter to the java writer		
		PrintWriter out = response.getWriter();
		
		Object obj = request.getSession().getAttribute("SESSION_USER_TOKEN");

        //pushes the header html out using the java function from  server library classes above 
		header("Employee Data (<a href=\"/EMP/start\">Index</a>)",obj, out);		

		if (obj != null) {	
		//sets up a string object  and Get the operation type from the request parameter
		String opr = request.getParameter("opr"); 
		
		// calls the add/edit based on (opr) value
		if ("add".equals(opr) || "edit".equals(opr)) {
			maintain(opr, request, out); // calls the add/edit form
		}
		// calls the  delete  based on (opr) value
		else if ("delete".equals(opr)) {
			delete(request, response, out);
		}
		// calls the  view based on (opr) value
		else {
			view(request, out); 
		}
	}
	else {
		out.println("<div class=\"error\">You have not logged in properly. Please login <a href=\"/EMP\">here</a></div>");
		}

		footer(out);
	}
	//DELETE
		//delete a record
		////////////////////////////////////////////////////////////////////////////////////////////
		//
		//
		//....basic format a java servlet function template
		//....(ify_whiley_for)
		//		(try)
		//			(connect)
		//			(create)
		//			(set)
		//			(excecute)
		//		(catch)
		//		(finnaly)
		//
		//
		////////////////////////////////////////////////////////////////////////////////////////////
	private void delete(HttpServletRequest request, HttpServletResponse response, PrintWriter out) throws ServletException, IOException {
		String id = request.getParameter("emp_no");
		String message = "Employee Record Number " + id + " deleted successfully";
		String opr = request.getParameter("opr");

		if ("delete".equals(opr)) {
			try {
				// Connect to the database
				connect();

				// Create a database statement
				PreparedStatement stmt = prepare("DELETE FROM EMPLOYEES WHERE emp_no = ?");

				// Prevent SQL Injection
				// Bind Parameter with Parameter Markers
				stmt.setInt(1, Integer.parseInt(id));
			
				// Execute the Select Query
				int result = stmt.executeUpdate();

				if (result == 0) {
					message = "Employee Record Number " + id + " delete failed";
				}
			} catch (Exception e) {
				// Log it
				e.printStackTrace();

				message = "Error occured: " + e.getMessage();
			} finally {

				// Close resources
				close();
			}
		}
		
		request.setAttribute("message", message); // Setting the message in the request attribute

		// Show the updated information
		view(request, out);	
	}

	private void maintain(String opr, HttpServletRequest request, PrintWriter out) {
		// Create the data form
		/**
		emp_no 				int(11) PK 
		birth_date 			date 
		first_name 			varchar(14) 
		last_name 			varchar(16) 
		gender 				enum('M','F') 
		hire_date 			date
		 */
	
		out.println("<div class=\"col-sm-4 col-sm-offset-4\">");
		out.println("<h2 align=\"center\">Maintain employee</h2>");
		out.println("	  <form method=\"post\" action=\"/EMP/employees\" id=\"employeeForm\">");
		out.println("     <fieldset>");
		
		///COLOR problem///////////////////////////////////////////////////////////////
		String id = "",  dob = "", fname = "", lname = "",  gender = "",  hdate = "";
		 
		boolean isEdit = "edit".equals(opr);

		//if the opr html querry parametr up in the url has  "opr=edit" representation then do all this below
		if (isEdit) {
			try {
				connect();

				ResultSet result = getRecord("EMPLOYEES", "emp_no", request.getParameter("emp_no"));

				if (result.next()) {
					id 				= result.getString("emp_no");
					dob 			= result.getString("birth_date");
					fname 			= result.getString("first_name");
					lname 			= result.getString("last_name");
					gender 			= result.getString("gender");
					hdate 			= result.getString("hire_date");
				}
			} catch (Exception e) {
				// Log it
				e.printStackTrace();
			} finally {
				close();//DRY
			}
		}
		///////////////////////////////////////////////////////////////////////////////BUG
        // because we are not wanting to reuse the cose then we put everything here for
		// the ADD and the edit  functions if we call add then it wont have anything the "id" 
		//because it didnt retrieve anything.. so it will be just blank in this case 
		// Medical record Number
		String readonly = isEdit ? "readonly": "";
		out.println("       <div class=\"form-group\">");
		out.println("       <label for=\"EmployeeNumber\" class=\"control-label\">Employee Number</label>");
		out.println("       <input name=\"EmployeeNumber\" type=\"text\" id=\"EmployeeNumber\" class=\"form-control\" value=\"" + id + "\" " + readonly + " />");
		
		out.println("       <input name=\"opr\" type=\"hidden\" id=\"opr\" value=\"" + opr + "Submit\" />");
		out.println("     </div>");
 
		// Date of Birth
		out.println("       <div class=\"form-group\">");
		out.println("       <label for=\"DOB\" class=\"control-label\">Date of Birth (YYYY-MM-DD)</label>");
		out.println("       <input name=\"DOB\" type=\"text\" id=\"DOB\" class=\"form-control\" value=\"" + dob + "\" />");
		
		// first Name
		out.println("     <div class=\"form-group\">");
		out.println("       <label for=\"FirstName\" class=\"control-label\">First Name</label>");
		out.println("       <input name=\"FirstName\" type=\"text\" id=\"FirstName\" class=\"form-control\" value=\"" + fname + "\" />");
		out.println("     </div>");
		
		// Last Name
		out.println("     <div class=\"form-group\">");
		out.println("       <label for=\"LastName\" class=\"control-label\">Last Name</label>");
		out.println("       <input name=\"LastName\" type=\"text\" id=\"LastName\" class=\"form-control\" value=\"" + lname + "\" />");
		out.println("       </div>");
		out.println("       </div>");

		// Address
		out.println("     <div class=\"form-group\">");
		out.println("       <label for=\"Gender\" class=\"control-label\">Gender</label>");
		out.println("       <input name=\"Gender\" type=\"text\" id=\"Gender\" class=\"form-control\" value=\"" + gender + "\" />");
		out.println("     </div>");

		// Insurance
		out.println("     <div class=\"form-group\">");
		out.println("       <label for=\"HireDate\" class=\"control-label\">Hire Date</label>");
		out.println("       <input name=\"HireDate\" type=\"text\" id=\"HireDate\" class=\"form-control\" value=\"" + hdate + "\" />");
		out.println("     </div>");

		// Submit Button
		out.println("     <div class=\"form-group text-center\">");
		out.println("       <button id=\"employeeSubmit\" name=\"employeeSubmit\" type=\"submit\" class=\"btn btn-primary\">Submit</button>");
		out.println("     </div>");

		out.println("     </fieldset>");
		out.println("	  </form>");
		out.println("     </div>");
	}

	// Painting the entire data table
	private void view(HttpServletRequest request, PrintWriter out) {

		try {
			String message = (String) request.getAttribute("message"); // Get the message from the request attribute

			if (message != null && !"".equals(message)) {
				String cssMessageClass = message.contains("successfully") ? "success" : "error";

				out.println("<div class=\"" + cssMessageClass + "\">" + message + "</div>");
			}			
			
			out.println("<figure>");
			out.println("  <table class=\"center\" summary=\"Employee Data\" title=\"Employee Data\">");
			out.println("    <thead>");
			out.println("      <tr>");
			out.println("        <th id=\"maintain\"><a href=\"/EMP/employees?opr=add\">Add</a></th>");
			out.println("        <th id=\"emp_no\">Employee Number</th>");
			out.println("        <th id=\"DOB\">Date of Birth</th>");
			out.println("        <th id=\"LastName\">Last Name</th>");
			out.println("        <th id=\"FirstName\">First Name</th>");
			out.println("        <th id=\"Gender\">Gender</th>");
			out.println("        <th id=\"hire_date \">hire date </th>");
			out.println("        <th id=\"delete\">Delete</th>");
			out.println("      </tr>");
			out.println("    </thead>");

			// Connect to the database
			connect();

			// Execute the Select Query
			ResultSet result = getTableData("employees", "last_name");

			// Loop through the result set (i.e. every fetched row)
			out.println("    <tbody>");

			int count = 0;
			while (result.next()) {
				// Get the data from the row
				int id 				= result.getInt("emp_no");
				String dob 			= result.getString("birth_date");
				String lname 		= result.getString("first_name");
				String fname 		= result.getString("last_name");
				String gender 		= result.getString("gender");
				String hdate 		= result.getString("hire_date");
			
				// Send the data back to client to show to the web page
				out.println("      <tr>");
				out.println("        <td headers=\"maintain\"><a href=\"/EMP/employees?opr=edit&emp_no=" + id + "\">Edit</a></td>");
				out.println("        <td headers=\"emp_no\">" + id + "</td>");
				out.println("        <td headers=\"DOB\">" + dob + "</td>");
				out.println("        <td headers=\"FirstName\">" + fname + "</td>");
				out.println("        <td headers=\"LastName\">" + lname + "</td>");
				out.println("        <td headers=\"Gender\">" + gender + "</td>");
				out.println("        <td headers=\"Hire_Date\">" + hdate + "</td>");
				out.println("        <td headers=\"delete\"><a href=\"/EMP/employees?opr=delete&emp_no=" + id + "\">Delete</a></td>");
				out.println("      </tr>");
				count++;
			}
			out.println("    </tbody>");
			out.println("    <tfoot>");
			out.println("      <tr>");
			out.println("        <td>Total:</td>");
			out.println("        <td colspan=\"4\">" + count + "</td>");
			out.println("      </tr>");
			out.println("    </tfoot>");
			out.println("</table>");
			out.println("</figure>");
		} catch (Exception e) {
			// Log it
			e.printStackTrace();
		} finally {// Regardless of what happens close everything
			// Closes all resources
			close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 Object obj = request.getSession().getAttribute("SESSION_USER_TOKEN");
		
		if (obj != null) {
		String id = request.getParameter("EmployeeNumber");
		String message = "Data added successfully";
		String opr = request.getParameter("opr");

		if ("addSubmit".equals(opr)) {
			try {
				// Connect to the database
				connect();

				// Create a database statement
				PreparedStatement stmt = prepare("INSERT INTO EMPLOYEES(emp_no, birth_date, first_name, last_name, gender, hire_date ) VALUES(?, ?, ?, ?, ?,? )");

				// Prevent SQL Injection
				// Bind Parameter with Parameter Markers
				stmt.setInt(1, Integer.parseInt(id));
				stmt.setString(2, request.getParameter("DOB"));
				stmt.setString(3, request.getParameter("FirstName"));
				stmt.setString(4, request.getParameter("LastName"));
				stmt.setString(5, request.getParameter("Gender"));
				stmt.setString(6, request.getParameter("HireDate"));

				// Execute the Select Query
				int result = stmt.executeUpdate();

				if (result == 0) {
					message = "No Data has been added";
				}
			} catch (Exception e) {
				// Log it
				e.printStackTrace();

				message = "Error occured: " + e.getMessage();
			} finally {

				// Close resources
				close();
			}
		}
		else if ("editSubmit".equals(opr)) {			
			message = "Employee  Number " + id + " edited successfully";
			try {
				// Connect to the database
				connect();

				// Create a database statement....ORDER HERE
				//.... MUST MATCH THE ORDER BELOW.........................................
				PreparedStatement stmt = prepare("UPDATE EMPLOYEES SET birth_date = ?, first_name = ?, last_name = ?, gender = ?, hire_date = ? WHERE emp_no = ?");

				// Prevent SQL Injection
				// Bind Parameter with Parameter Markers				
				
				//from form
				//....ORDER HERE.... MUST MATCH THE ORDER ABOVE...........................
				stmt.setString(1, request.getParameter("DOB"));
				stmt.setString(2, request.getParameter("FirstName"));
				stmt.setString(3, request.getParameter("LastName"));
				stmt.setString(4, request.getParameter("Gender"));
				stmt.setString(5, request.getParameter("HireDate"));
				stmt.setInt(6, Integer.parseInt(id));

				// Execute the Select Query
				int result = stmt.executeUpdate();

				if (result == 0) {
					message = "Employee Record Number " + id + " edit failed";
				}
			} catch (Exception e) {
				// Log it
				e.printStackTrace();

				message = "Error occured: " + e.getMessage();
			} finally {

				// Close resources
				close();
			}			
		}
		
		request.setAttribute("message", message); // Setting the message in the request attribute

		// Show the updated information
		doGet(request, response);
	}
		else {
			PrintWriter out = response.getWriter();			
	        //pushes the header html out using the java function from  server library classes above 
			header("Employee Data (<a href=\"/EMP/start\">Index</a>)", obj, out);				
			out.println("<div class=\"error\">You have not logged in properly. Please login <a href=\"/EMP\">here</a></div>");
			footer(out);
		}
		
	}

}
