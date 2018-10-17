package emp;

import java.io.Serializable;

public class User implements Serializable {
	/**
	 *  Serialization Id 
	 */
	private static final long serialVersionUID = 1L;
	
	String userId, userPassword, firstName, middleName, lastName, userEmail;	
	
	public User(String userId, String userPassword, String firstName, String middleName, String lastName, String userEmail) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.userEmail = userEmail;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getName() {	
	   return firstName + " " + middleName + " " + lastName;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPassword=" + userPassword + ", firstName=" + firstName
				+ ", middleName=" + middleName + ", lastName=" + lastName + ", userEmail=" + userEmail + "]";
	}	
	
}
