package emp.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import emp.pojo.Employee;


//////////////////////////////////BEGIN DAO CLASS/////////////////////////////////////////////////////////////////////////////
//
//PARRENT CLASS has.....(D.R.Y.  S T U F F)  
//a.) defined (D.R.Y.)  reusable objects neccessary to accomplish the 4 
//included manadatory dao function needs of 
//	1) Create a usable connection return  object 
//	2) Create a usable Statement return  object
//	3) Create a usable preparedStatement  return  object
//	4) Create a usable ResutSet return  object
//
//b.) defined (D.R.Y.)  reusable objects neccessary to accomplish connection 
//
//c.) defined (D.R.Y.)  reusable objects neccessary to accomplish get the table data 
//
//d.) defined (D.R.Y.)  reusable objects neccessary to accomplish querying the database 
//and place results in a reusable object
//
//
//
//
//
//
//METHOD	:	.getConnection(String url, String user, String password) throws SQLException
//				Attempts to establish a connection to the given database URL.
//				The DriverManager attempts to select an appropriate driver from	the set of registered JDBC drivers. 
//
//METHOD : createStatement() 
//				Creates a Statement object for sendingSQL statements to the database.SQL statements 
//				without parameters are normally executed using Statement objects. If the same SQL 
//				statement is executed many times, it may be more efficient to use a PreparedStatement object. 
//
//				Result sets created using the returned Statement object will by default be type 
//				TYPE_FORWARD_ONLYand have a concurrency level of CONCUR_READ_ONLY.The hold ability of 
//				the created result sets can be determined by calling getHoldability.
//				Returns:a new default Statement objectThrows:SQLException - if a database access error occurs 
//				or this method is called on a closed connection
//
//
//
//
//METHOD : prepare(String sql)
//
//				java.sql.PreparedStatementAn object that represents a precompiled SQL statement. 
//
//				A SQL statement is precompiled and stored in a PreparedStatement object. 
//				This object can then be used toefficiently execute this statement multiple times. 
//
//				Note: The setter methods (setShort, setString,and so on) for setting IN parameter valuesmust 
//				specify types that are compatible with the defined SQL type ofthe input parameter. 
//				For instance, if the IN parameter has SQL type INTEGER, then the method setInt should be used. 
//
//
//METHOD : .prepareStatement(String sql) throws SQLException  from  PreparedStatement java.sql.Connection
//				Creates a PreparedStatement object for sending parameterized SQL statements to the database. 
//
//				A SQL statement with or without IN parameters can be pre-compiled and stored in a PreparedStatement object. 
//				This object can then be used to efficiently execute this statement multiple times. 
//
//
//METHOD :  forName(String className) throws ClassNotFoundException
//				Returns the Class object associated with the class or interface with the given string name. Invoking this method isequivalent to: 
//
//				Class.forName(className, true, currentLoader) 
//				where currentLoader denotes the defining class loader ofthe current class. 
//				For example, the following code fragment returns the runtime Class descriptor for the class named java.lang.Thread: 
//
//				Class t = Class.forName("java.lang.Thread") 
//
//				A call to forName("X") causes the class named X to be initialized.
//				Parameters:className the fully qualified name of the desired class.Returns:the Class object for the class with the specified name.
//			
//
//
//METHOD : getRecord(String tableName, String columnName, String columnValue)
//
//				(1) binds the results of an individual prepared SQL statement to the connection object instance "conn" 
//	  					and assigned that over to another alius instance ptsmt
///												(2) ????????maybe gets (via  a..... parseint()) and sets (via  b.... setInt())the uid to an integer????????????????
//
//					a...int java.lang.Integer.parseInt(String s) throws NumberFormatException
//						Parses the string argument as a signed decimal integer. 
//						The characters in the string must all be decimal digits, except that the first character may be an 
//						ASCII minus sign '-'('\u005Cu002D') to indicate a negative value or anASCII plus sign '+' 
//						('\u005Cu002B') to indicate a positive value.
//
//					b...void java.sql.PreparedStatement.setInt(int parameterIndex, int x) throws SQLException
//						Sets the designated parameter to the given Java int value.
//						The driver converts this to an SQL INTEGER value when it sends it to the database.
//						Parameters:parameterIndex the first parameter is 1, the second is 2, ...x the parameter value
//
//				(3) return result of type ResultSet;
//
//
//METHOD : close() throws SQLException
//
//				Releases this Statement object's data base and JDBC resources immediately instead of waiting 
//				for this to happen when it is automatically closed.
//				It is generally good practice to release resources as soon as you are finished with them to avoid tying up database resources. 
//				Calling the method close on a Statement object that is already closed has no effect. 
//				Note:When a Statement object is closed, its current ResultSet object, if one exists, is also closed.
//
//
//
//
//
//
//--R I G H T   S I D E  C O D E   B L O C K   T R A C E   E X E C U T I O N -------------------------------------------------//		
//
//EDao_)...   class CommonDAO { head def
//EDao_A)...  	Member data:
//EDao_B)...  	Method :			connect()		affixes url suffix for this rendered page and java string variable initialized
//EDao_C)... 	 	Method :			getTableData ( 
//EDao_D)... 	 	Method :			getResultFromQuery (
//EDao_E)... 	 	Method :			prepare (Prepare a database statement with a passed sql string statement) 
//EDao_F)...   	Method :			---->>------------->>------------>>------------------------------------------>>  CDao_?)... 
//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
																																//
public class EmployeeDAO extends CommonDAO {																					//
																																//
																																//
	public boolean delete(String emp_no) {																						//
		boolean isSuccess = false;																								//
		try {																													//
			connect(); 																											// Connect to the database
																																// Create a database statement
			PreparedStatement stmt = prepare("DELETE FROM employees WHERE emp_no = ?");											//
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
	      // System.out.println(format);	
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