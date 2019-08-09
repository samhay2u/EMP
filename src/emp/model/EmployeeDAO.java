package emp.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import emp.pojo.Employee;


public class EmployeeDAO extends CommonDAO {


	public boolean delete(String emp_no) {
		boolean isSuccess = false;
		try {
			connect(); // Connect to the database
						// Create a database statement
			PreparedStatement stmt = prepare("DELETE FROM employees WHERE emp_no = ?");
			// Prevent SQL Injection Bind Parameter with Parameter Markers
			stmt.setInt(1, Integer.parseInt(emp_no));
			isSuccess = stmt.executeUpdate() > 0; // Execute the Select Query
		}

		catch (Exception e) {
			e.printStackTrace(); // Log it
		}

		finally {
			close(); // Close resources
		}
		return isSuccess;
	}

	
	public String getSalary (String salary) {
	       String pattern = "######.##";
	       DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance();
	       decimalFormat.applyLocalizedPattern(pattern);
	       String format = decimalFormat.format(Double.valueOf(salary));
	       System.out.println(format);	
	       return format;
	}
			

	public Employee retreive(String emp_no) {
		Employee employee = null;
		try {
			connect();
			ResultSet result = getRecord("employees", "emp_no", emp_no);

			if (result.next()) {
				employee = new Employee(result.getString("emp_no"), result.getString("birth_date"),
						result.getString("first_name"), result.getString("last_name"), result.getString("gender"),
						result.getString("hire_date"), getSalary(result.getString("salary")) );
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			close();// DRY
		}

		return employee;
	}

	/////////////////////////////////////////////////////////////
	/*
	 * 
	 * public Employee(String emp_No, String birth_date, String first_name, String
	 * last_name, String gender, String hire_date) { super(); this.emp_No = emp_No;
	 * this.dob = birth_date; this.f_Name = first_name; this.l_Name = last_name;
	 * this.gender = gender; this.hire_Date = hire_date;
	 * 
	 */
	///////////////////////////////////////////////////////////////
	public List<Employee> retreiveAll() {
		List<Employee> list = new ArrayList<Employee>();
		try {
			connect(); // Connect to the database
			ResultSet result = getTableData("employees", "first_name, last_name");// CHECK FOR TOO MANY ARGS***********
			while (result.next()) {
				/*
				 * emp_no birth_date first_name last_name gender hire_date
				 */

				// Get the data from the row
				list.add(new Employee(result.getString("emp_no"), result.getString("birth_date"),
						result.getString("first_name"), result.getString("last_name"), result.getString("gender"),
						result.getString("hire_date"), getSalary(result.getString("salary"))));
			}
		}

		catch (Exception e) {
			// Log it
			e.printStackTrace();
		}

		finally {// Regardless of what happens close everything
			// Closes all resources
			close();
		}

		return list;
	}

	public boolean add(Employee employee) {
		boolean isSuccess = false;
		try {
			connect();// Connect to the database
			// Create a database statement

			PreparedStatement stmt = prepare(
					"INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date, salary) VALUES(?, ?, ?, ?, ?, ?, ?)");

			// Prevent SQL Injection
			// Bind Parameter with Parameter Markers
			stmt.setInt(1, Integer.parseInt(employee.getEmp_No()));
			stmt.setString(2, employee.getDob());
			stmt.setString(3, employee.getF_Name());
			stmt.setString(4, employee.getL_Name());
			stmt.setString(5, employee.getGender());
			stmt.setString(6, employee.getHire_Date());
			stmt.setString(7, employee.getSalary());

			// emp_no
			// Execute the Select Query
			isSuccess = stmt.executeUpdate() > 0;
		}

		catch (Exception e) {
			// Log it
			e.printStackTrace();
		}

		finally {
			// Close resources
			close();
		}
		return isSuccess;
	}

	public boolean edit(Employee employee) {
		boolean isSuccess = false;
		try {
			// Connect to the database
			connect();

			// Create a database statement
			PreparedStatement stmt = prepare(
					"UPDATE employees SET birth_date = ?, first_name = ?, last_name = ?, gender = ?, hire_date = ?, salary = ? WHERE emp_no = ?");

			// Prevent SQL Injection
			// Bind Parameter with Parameter Markers

			stmt.setString(1, employee.getDob());
			stmt.setString(2, employee.getF_Name());
			stmt.setString(3, employee.getL_Name());
			stmt.setString(4, employee.getGender());
			stmt.setString(5, employee.getHire_Date());
			stmt.setString(6, employee.getSalary());
			stmt.setInt(7, Integer.parseInt(employee.getEmp_No()));
			

			// Execute the Select Query
			isSuccess = stmt.executeUpdate() > 0;
		}

		catch (Exception e) {
			// Log it
			e.printStackTrace();
		}

		finally {

			// Close resources
			close();
		}
		return isSuccess;
	}
}