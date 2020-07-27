package emp.model;

import java.sql.PreparedStatement;

import emp.pojo.User;

public class UserDAO extends CommonDAO {
////////////////////////////////////////////////////////////////////////////////////////////
//
//USER DEFINED METHOD
//this method passes 2 strings attained at login : (userid and pw) throws exceptions
//	sets an inherited object instnace to null
//	trys to connect to database with parrent connection function 
//		(if success)		
//		calls preparedStatement bound to the parrent connection object conn 
//			              and passes a string that is also an SQL statement
//      (else) catches the failed attempt or thrown exception and prints it to the stacktrace 
//
//  returns the user object either containing loaded user credentials or null value     
///////////////////////////////////////////////////////////////////////////////////////////////
	public User validateLogin(String userName, String password) throws Exception {
		User user = null;

		try {
			connect();

			pstmt = conn.prepareStatement("SELECT * FROM users WHERE user_id = ? AND user_password = ?");//defined in PreparedStatement class
			pstmt.setString(1, userName);			//bind parameter : automatically binds the entered username( "Mcsa_______" to the user_id in the database)
			pstmt.setString(2, password);			//bind parameter : automatically binds the entered username( "t_______" to the pw in the database) 
			result = pstmt.executeQuery();			//defined in PreparedStatement class

			if (result.next()) {//also checks to see if there is a first row as well
				// Get the data from the row
				user = new User(result.getString("user_id"), 
						result.getString("user_password"),
						result.getString("first_name"), 
						result.getString("middle_name"), 
						result.getString("last_name"),
						result.getString("user_email"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return user;
	}

	
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	//INITIALIZES THE "post" requiremnet with the OLTP process
	//posts the new registree to database user table row collumn
	//PRE CONDITION:
	//POST CONDITION:
	//
	////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public boolean register(User user) {
		boolean isSuccess = false;

		try {
			// Connect to the database
			connect();

			// Create a database statement
			PreparedStatement stmt = prepare(
					"INSERT INTO users(user_id, user_password, first_name, middle_name, last_name, user_email) VALUES(?, ?, ?, ?, ?, ?)");

			// Prevent SQL Injection
			// Bind Parameter with Parameter Markers
			stmt.setString(1, user.getUserId());
			stmt.setString(2, user.getUserPassword());
			stmt.setString(3, user.getFirstName());
			stmt.setString(4, user.getMiddleName());
			stmt.setString(5, user.getLastName());
			stmt.setString(6, user.getUserEmail());

			// Execute the Select Query
			int result = stmt.executeUpdate();

			isSuccess = (result > 0);
		} catch (Exception e) {
			// Log it
			e.printStackTrace();
		} finally {
			// Close resources
			close();
		}

		return isSuccess;
	}
}
