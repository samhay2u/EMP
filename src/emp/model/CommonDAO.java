package emp.model; //essentially defines the file as an EMP project package to be used there exclusively

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////S
//  		create a connection to the internet via @webservlet a generated webpage that is generic to the PIS project and do so by appending to
//			its url with ..../start..... 
//  		then
// 				extend over to this CommonServlet from the httpServlet neccessary protocols to have a web servlet that publishes to the intenet a webpage  
//  
//  			variables are then set up to begin this process next
//
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
public class CommonDAO {

	protected Connection conn = null; // conn instance of type Connection created
	protected Statement stmt = null; // stmt instance of type Statement created
	protected PreparedStatement pstmt = null; // pstmt instance of type PreparedStatement created
	protected ResultSet result = null; // result instance of type ResultSet created

	public void connect() throws Exception {
		Class.forName("com.mysql.jdbc.Driver"); // Register JDBC Driver
		conn = DriverManager.getConnection("jdbc:mysql://localhost/employees", "employees", "tset");
	}

	public ResultSet getTableData(String tableName, String orderBy) throws Exception {
		return getResultFromQuery("SELECT * FROM " + tableName + " ORDER BY " + orderBy);
	}

	public ResultSet getResultFromQuery(String query) throws Exception {
		stmt = conn.createStatement(); // Create a database statement
		result = stmt.executeQuery(query); // Execute the Select Query
		return result;
	}

	public PreparedStatement prepare(String sql) throws Exception {
		pstmt = conn.prepareStatement(sql);// Prepare a database statement
		return pstmt;
	}

	public ResultSet getRecord(String tableName, String columnName, String columnValue) throws Exception {
		pstmt = conn.prepareStatement("SELECT * FROM " + tableName + " WHERE " + columnName + " = ?");
		pstmt.setInt(1, Integer.parseInt(columnValue));
		result = pstmt.executeQuery();
		return result;
	}

	///////////////////////////////////////////////////////////////////////////////////////////////////////
	//
	//
	//
	//
	//
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public void close() {
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

}// close servlet
