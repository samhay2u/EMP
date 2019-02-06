package emp.pojo;

import java.io.Serializable;

public class Employee implements Serializable {
	/**
	 * Serialization Id FOR PORTABILITY Java provides a mechanism, called object
	 * serialization where an object can be represented as a sequence of bytes that
	 * includes the object's data as well as information about the object's type and
	 * the types of data stored in the object.
	 */
	private static final long serialVersionUID = 1L;

	String emp_No, dob, f_Name, l_Name, gender, hire_Date;

	// RC --source
	// lc ---Generate constructors using fields
	// lc ---ok
	/*
	 * CREATE TABLE `employees` ( `emp_no` varchar(10) NOT NULL PRIMARY KEY,
	 * `birth_date` DATE NOT NULL, `first_name` varchar(225) NOT NULL, `last_name`
	 * varchar(225) NOT NULL, `gender` char(1) DEFAULT 'U' NOT NULL, `hire_date`
	 * DATETIME DEFAULT NOW() NOT NULL )
	 * 
	 */
	public Employee(String emp_No, String birth_date, String first_name, String last_name, String gender,
			String hire_date) {
		super();
		this.emp_No = emp_No;
		this.dob = birth_date;
		this.f_Name = first_name;
		this.l_Name = last_name;
		this.gender = gender;
		this.hire_Date = hire_date;
	}

	// rc--source
	// generate getter and setters
	// select nall EXCEPT serisliazableversionUID
	public String getEmp_No() {
		return emp_No;
	}

	public void setEmp_No(String emp_No) {
		this.emp_No = emp_No;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String birth_date) {
		this.dob = birth_date;
	}

	public String getFirst_name() {
		return f_Name;
	}

	public void setFirst_name(String first_name) {
		this.f_Name = first_name;
	}

	public String getLast_name() {
		return l_Name;
	}

	public void setLast_name(String last_name) {
		this.l_Name = last_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHire_date() {
		return hire_Date;
	}

	public void setHire_date(String hire_date) {
		this.hire_Date = hire_date;
	}

	// rc--source
	// toString
	// lc select all fields but not methods

	/*
	 * @Override public String toString() { return "Patient [medRecNo=" + medRecNo +
	 * ", name=" + name + ", dob=" + dob + ", address=" + address + ", insurance=" +
	 * insurance + "]";
	 */
	/*
	 * @Override public String toString() { return "Employee [emp_No=" + emp_No +
	 * ", birth_date=" + dob + ", f_Name=" + first_Name + " , l_Name= " + last_Name
	 * + ", gender=" + gender + ", hire_date= " + hire_Date"]";
	 */

	@Override
	public String toString() {
		return "Employee [emp_No=" + emp_No + ", birth_date=" + dob + ", first_Name=" + f_Name + " , last_Name= "
				+ l_Name + ", gender=" + gender + ", hire_date= " + hire_Date + "]";
	}
}
