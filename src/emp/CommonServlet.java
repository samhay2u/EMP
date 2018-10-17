package emp;  //essentially defines the file as an EMP project package to be used there exclusively

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


//A connection (session) with a specific database. SQL statements are executed and results 
//are returned within the context of a connection. 
//A Connection object's database is able to provide information describing its tables, 
//its supported SQL grammar, its stored procedures, the capabilities of this connection, 
//and so on. This information is obtained with the getMetaData method.
import java.sql.Connection;


//Provides the API for accessing and processing data stored in a data source (usually a relational database) 
//using the JavaTM programming language. This API includes a framework whereby different drivers can be installed
//dynamically to access different data sources. Although 
//the JDBCTM API is mainly geared to passing SQL statements to a database, it provides for reading and writing data from any data source with a tabular format
import java.sql.DriverManager;


//An object that represents a precompiled SQL statement. 
//A SQL statement is precompiled and stored in a PreparedStatement object. 
//This object can then be used toefficiently execute this statement multiple times. 
import java.sql.PreparedStatement;


//
//
//
//
import java.sql.ResultSet;


//
//
//
//
import java.sql.SQLException;


//The object used for executing a static SQL statementand returning the results it produces. 
//
//
//
import java.sql.Statement;

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
public class CommonServlet extends HttpServlet  
{
	//PRIVATE VARIABLE DECLARATIONS ONLY USEFULL WITHIN THIS FUNCTION
	private static final long serialVersionUID 		= 1L;    //The serialVersionUID is used as a version control in a Serializable class. 
															 //If you do not explicitly declare a serialVersionUID, JVM will do it for you automatically, based 
															 //on various aspects of your Serializable class, as described in the Java(TM) Object Serialization Specification.
	private Connection conn 						= null;  //conn instance of type Connection created
	private Statement stmt 							= null;  //stmt instance of type Statement created
	private PreparedStatement pstmt 				= null;  //pstmt instance of type PreparedStatement created
	private ResultSet result 						= null;  //result instance of type ResultSet created

	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//Notes And KEYWORDS
	//******************************************************************************************************************* 									
	// * protected-				The protected modifier specifies that the member can only be accessed within
	// *						its own package (as with package-private) and, in addition, by a subclass of its class
	// *						in another package
	// *
	// * void-					return  nothing							 
	// *
	// * connect()-				Apparently user defined function that will connect to database
	// * 						maybe a wrapper tat goes around several diferent JDBC functions					
	// * 
	// *  throws Exception {	-The Java throws keyword is used to declare an exception. It gives an information to 
	// *						the programmer that there may occur an exception so it is better for the programmer to provide the 
	// *						exception handling code so that normal flow can be maintained. Exception Handling is mainly used to 
	// *						handle the checked exceptions. 
	// *  
	// *  Class.forName("com.mysql.jdbc.Driver");- 			takes this text between the qoutation marks....
	//														 analizes it to see if there is something relevant
	//														 in its associated libraries that it can generate an object for
	//														 ....then if so it creates a generic object instantiation
	//														 and stores it in a nameless registry area to be quickly reused later.
	//														 I think...
	// *  
	// *  conn-				user defined instance of a system defined object called DriverManager that has the member function
	// *  					whose main objective is to return project name file passwords to the database for acessing later
	// *  					 stores this in the object instance conn 
	// *  
	// * DriverManagers-    As part of its initialization, the DriverManager class will attempt to load the driver classes referenced 
	//						in the "jdbc.drivers" system property. This allows a user to customize the 
	//						DBC Drivers used by their applications. 
	// * 
	// * .getConnection("jdbc:mysql://localhost/employees", "root", "password");-Attempts to establish a connection to the given database URL.
	//																			The DriverManager 
	//																			attempts to select an appropriate driver from the set of registered JDBC drivers.
	//
	//																			Note: If the user or password property are also specified as part of the url, 
	//																			it is implementation-defined as to which value will take precedence.For maximum 
	//																			portability, an application should only specify a property once
	//						
	//						-Tests the connection then establishes connection to the database with the required project name, username, and password
	// * 					-stored over in the database
	//******************************************************************************************************************* 									
	//	so it all says:
	//
	///**
	// * 
	// * @throws Exception
	// */
	//
	//
	//
	//	connect()function is my own custom function to connect to the database it is protected such that it can only be 
	//	be used by siblings, children or parent  classes. 
	//
	//	Then introduce a java (object creater) function from the java.lang.Class called forName()
	//
	//			forName("given string name")
	//			Returns the Class object associated with the class or interface with the "given string name". 
	//			Invoking this method is equivalent to:
	//
	//			  Class.forName(className, true, currentLoader) 
	//			  where currentLoader denotes the defining class loader of the current class
	//				
	//				create a reusable object/variable called conn... assign to all of the following to hold all of the folowing:
	//
	//					so....class.forName("com.mysql.jdbc.Driver"); creates a resusable yet nameless object in the registry somewhere 
	//				  	ready to be reused in the cache (I THINK....)
	//
	//					then..DriverManager.   //opens the class or file of available drivers the driver associated with the argument list
	//								   //in this case it was ("jdbc:mysql:
	//					then..getConnection(jdbc:mysql://localhost/employees", "root", "password");  
	//										//this connection function within that group is called 
	//								   // it uses this catenation of qouted texts as means(keys) to gain entry into the database(unlock).
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected void connect() throws Exception 
	{
		// Register JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
	
		// Open a database connection (JDBC URL)
		conn = DriverManager.getConnection("jdbc:mysql://localhost/employees", "EMPLOYEES", "tset");	
	}


	
	
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// ******************************************************************************************************************* 									
	// * 
	// * *protected-		see Above
	// * 
	// * ResultSet- 		object maintains a cursor pointing to its current row of data. Initially 
	// * 					the cursor is positioned before the first row. The next method moves the cursor to 
	// * 					the next row, and because it returns false when there are no more rows in the 
	// * 					ResultSet object, it can be used in a while loop to iterate through the result set.
	// * 
	// * getTableData()-	retieves database table data  from a database given certain table realted parameters
	// * 					
	// *  
	// * 
	// * getResultFromQuery()- Create a fully formatted result string from a query and its parameters.
	// * 					The method takes care of processing various types of query result.
	// * 					Most cases are handled by printers, but counting and debugging uses special code.
	// * 
	// * throws Exception-	see above
	// *
	// * ******************************************************************************************************************* 									
	//  		so it all says:
	//**
	//* 
	// * Get result from query
	// * 
	// * @param tableName
	// * @return
	// * @throws Exception
	// */
	//  
	//  		Go get all the table non schema meta data(rows and and columns and key architecture from the database 
	//  		with the JDBC that was fed into argument "tableName" and organize it with a given argument "order by" too.
	//  	
	//       	Then... stop for a moment call another our own DRY rule function function that actually goes and gets the schema (data) 
	//       	in those tables over in the database by feeding the function strings of quoted texts that just 
	//      	so happen to be legitamate SQL querries. 
	//                  
	//                  then return all of that querried table data into one object called ResultSet that is 
	//                  "protected or only usable by child or parent classes.
	//                  
	//                 
	//                  			also ...throw a "error bucket" ot when you do this just in case everything 
	//                  			doesnt go as planned and you still need to press on without getting tied up 
	//                  			with finding fixing that error. atleast its isolated in a bucket that has a 
	//                  			specific easily findable place  if it occures.
	//  
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected ResultSet getTableData(String tableName, String orderBy) throws Exception
	{
		return getResultFromQuery("SELECT * FROM " + tableName +" ORDER BY " + orderBy);

	}




	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//Notes And KEYWORDS
	// ******************************************************************************************************************* 									
	// ResultSet		-reserved object/type to hold what is brought back from getResltFromQuery()
	//
	//						A table of data representing a database result set, whichis usually generated by executing a statement that queries the database. 
	//
	//						A ResultSet object maintains a cursor pointingto its current row of data. Initially the cursor is positionedbefore 
	//						
	//						the first row. The next method moves thecursor to the next row, and because it returns falsewhen there are no more rows in the ResultSet 
	//						
	//						object,it can be used in a while loop to iterate throughthe result set. 	
	//
	//
	//
	//
	// getResultFromQuery()  
	//
	//
	// * stmt
	// * 
	// * createStatement();	Creates a Statement object for sending SQL statements to the database. SQL statements
	//
	//						without parameters are normally executed using Statement objects. If the same SQL statement is executed many
	//
	//						times, it may be more efficient to use a PreparedStatement object. 
	//
	//						Result sets created using the returned Statement object will by default be type TYPE_FORWARD_ONLYand
	//
	//						have a concurrency level of CONCUR_READ_ONLY.The holdability of the created result sets can be determined 
	//
	//						by calling getHoldability.
	//
	// * 
	// * 
	// * 
	// * stmt.executeQuery(query);  --Executes the given SQL statement, which returns a single ResultSet object. 
	//
	//
	// * 
	// * result  					--instance/object to hold assigned object data
	// * 
	// * 
	// * 
	// ******************************************************************************************************************** 									
	//		so it all says:
	//						go run a query against the database with this string argument (string querry) that contains an sql statement 
	//
	//								do this by actually just passing the string to a real java function executeQuerry(query)
	//
	//								but first execute the creatStatement() member function that is actually innate to to the connection java class
	//
	//								then throw that over into the previously created stmt instance of type Statement
	//
	//								then reuse that stmt with the memberfunction executeQuerry () function with the string query as its argument
	//								
	//								then through that once again over into reslut instance of type resultSet
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected ResultSet getResultFromQuery(String query) throws Exception 
	{
		// Create a database statement
		stmt = conn.createStatement();

		// Execute the Select Query
		result = stmt.executeQuery(query);

		return result;
	}	
	
	
	
	

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////`
	//
	//Notes And KEYWORDS
	// ******************************************************************************************************************* 									
	// * protected PreparedStatement-An object that represents a precompiled SQL statement. 
	//
	//								A SQL statement is precompiled and stored in a PreparedStatement object. 
	//
	//								This object can then be used to efficiently execute this statement multiple times. 
	//	 
	// * prepare(String sql)-		maybe user defined wrapper used to execute the 
	// 
	// * prepareStatement(sql);		Creates a PreparedStatement object for sending parameterized SQL statements to the database. 
	//		
	//								A SQL statement with or without IN parameters can be pre-compiled and stored in a PreparedStatement 
	//
	//								object. Thisobject can then be used to efficiently execute this statementmultiple times
	//							
	// * 
	// * 
	// * 
	// * 
	// * ******************************************************************************************************************* 									
	//		so it all says:
	//							Prep the way for talking to a database by creating a canned reusable object ready to send to a 
	//							
	//							database as a prewritten  sql statement
	//
	//				`			that must be passed a a perfect sql string that is perfectly organized to an expected pattern
	//							
	//							and return that as a reusable canned pstmt object.
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected PreparedStatement prepare(String sql) throws Exception 
	{
		// Prepare a database statement
		pstmt = conn.prepareStatement(sql);
		return pstmt;
	}
	
	
	
	
	
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// * Get the record from the tableName where columnName = columnValue
	// * 
	// * @param tableName
	// * @param columnName
	// * @param columnValue
	// * @return
	// * @throws Exception
	// */	
	//Notes And KEYWORDS
	// ******************************************************************************************************************* 	
	//
	// ResultSet			-reserved object/type to hold what is brought back from getResltFromQuery()
	//
	//						A table of data representing a database result set, which is usually generated by executing a statement that queries the database. 
	//
	//						A ResultSet object maintains a cursor pointing to its current row of data. Initially the cursor is positioned before 
	//						
	//						the first row. The next method moves the cursor to the next row, and because it returns false when there are no more rows in the ResultSet 
	//						
	//						object,it can be used in a while loop to iterate through the result set.  
	//
	//
	// *  getRecord(	-  userdefined wrapper function that takes three string arguments relative to a database tables name, collumn name and column schema
	// * 
	// * 
	// * conn.prepareStatement("SELECT * FROM " + tableName + " WHERE " + columnName + " = ?");-- mixes the
	//															previously defined prepared statement with the passed in table arguments above
	// *  
	// * setInt(1, Integer.parseInt(columnValue)-- Sets the designated parameter to the given Java int value.The driver converts this
	//												to an SQL INTEGER value when it sends it to the database.
	// *
	//	parseInt()--		Parses the string argument as a signed decimal integer. The characters in the string must all be decimal digits, except
	//						that the first character may be an ASCII minus sign '-'('\u005Cu002D') to indicate a negative value or an ASCII plus 
	//						sign '+' ('\u005Cu002B') toindicate a positive value. The resulting integer value is returned, exactly as if the argument 
	//						and the radix 10 were given as arguments to the parseInt(java.lang.String, int) method.
	//						Parameters:s a String containing the intrepresentation to be parsed
	//
	// * executeQuery()
	// * 
	// * ******************************************************************************************************************* 									
	//		so it all says: 
	//				`		use this canned java object ResultSet to hold what is brought back from the userdefined wrapper function
	//						
	// 						that essentially just passes three strings that are actually mysql table parts
	//
	//						  then:
	//								call the java preapareStatement() function and reparse the sql querry with those passed string arguments
	//								in correctly expected manner but leave the last part of the querry open and unfilled with a ?
	//								 then
	//										call the setInt() member function of pstmt instance of type Statement (from  way above) to
	//										set the passed integer value commonValue as a correct value to be used correctly used in ptsmt when it is 
	//										submitted to the database as a canned reusable database query.
	
	//										then execute the memberfunction of pstmt executeQuery() and put it in result
	//										then return this result
	//
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected ResultSet getRecord(String tableName, String columnName, String columnValue) throws Exception 
	{
		// Prepare a database statement
		pstmt 		= conn.prepareStatement("SELECT * FROM " + tableName + " WHERE " + columnName + " = ?");
		pstmt.setInt(1, Integer.parseInt(columnValue));
		result 		= pstmt.executeQuery();
		
		return result;
	}

	
	
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////
	//	
	//Notes And KEYWORDS
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
	// * /
	// * 
	// ******************************************************************************************************************** 									
	//		so it all says:
	//
	// 
	//
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	protected void close() {
		// Close Result Set
		if (result != null) {
			try {
				result.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Close Statement
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Close Prepared Statement
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		// Close Connection
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	//Notes And KEYWORDS
	// ******************************************************************************************************************* 									
	// * validateLogin(
	// * 
	// * errorMessage = "";
	// * 
	// * setString(
	// * 
	// * 
	// * (!result.next())
	// * 
	// * 
	// * 
	// * 
	// * ******************************************************************************************************************* 									
	// 			so it all says:
	// 
	//
	//
	//
	// 
	//
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public User validateLogin(String userName, String password) throws Exception 
	{
	User user = null;
	//String errorMessage = "";
		try {
			connect();
			
			pstmt = conn.prepareStatement("SELECT * FROM employees.users WHERE user_id = ? AND user_password = ?");
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			result = pstmt.executeQuery();
			
			if (result.next()) {
				
				user = new User(result.getString("user_id"), result.getString("user_password"), result.getString("first_name"), result.getString("middle_name"), result.getString("last_name"), result.getString("user_email"));

		       //errorMessage = "Invalid User: " + userName;
			}
		} catch (Exception e) {
			e.printStackTrace();
			
			//errorMessage = e.getMessage();
		}
		finally {		
		   close();
		}
		
		return user;
		//return errorMessage;
	}
	
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////
	//Notes And KEYWORDS
	// * ********************************************************************************************************************* 							
	/// 		so it all says:
	// 
	//  
	// 
	//
	//
	//
	//////////////////////////////////////////////////////////////////////////////////////////////////////////*/
	public static void header(String title, Object obj, PrintWriter out) 
	{
		out.println("<!DOCTYPE html>"); // required beginning html out file code
		out.println("<html>");
		out.println("<head>"); // head tag set up
		out.println("<meta charset=\"ISO-8859-1\">");
		out.println("<meta http-equiv=\"cache-control\" content=\"no-cache\" />"); // html browser configurations
		out.println("<meta http-equiv=\"expires\" content=\"0\" />");
		out.println("<meta http-equiv=\"pragma\" content=\"no-cache\" />");
		out.println("<link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\" type=\"text/css\">");
		out.println("<link rel=\"stylesheet\" href=\"/EMP/css/site.css\" type=\"text/css\" />");
		out.println("<title>Employee Data Management System</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("    <a href=\"/EMP\">Logout</a>");			
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
	//Notes And KEYWORDS
	//******************************************************************************************************************* 									
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
	// * ******************************************************************************************************************* 									
	//		so it all says:
	//
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static void footer(PrintWriter out) 
	{
		out.println("	        </div>");		
		out.println("	      </div>");		
		out.println("	    </div>");	
		out.println("   </section>");
		out.println("</body>");
		out.println("</html>");
	}
		
	

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	//
	//Notes And KEYWORDS
	//******************************************************************************************************************* 									
	// * 
	///* 
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
	// * ******************************************************************************************************************* 									
	//			so it all says:
	//
	//
	//
	//
	//
	//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////*/
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Object obj = request.getSession().getAttribute("SESSION_USER_TOKEN");
		header("Employee Information System", obj,  out);
		out.println("<div class=\"text-center\">");	
		out.println("  <a href=\"/EMP/employees\">Employees</a>");
		out.println("  <br/>");
		out.println("</div>");
		footer(out);
	}


}//close servlet
