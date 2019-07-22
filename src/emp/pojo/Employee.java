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

	String emp_No, dob, f_Name, l_Name, gender, hire_Date, salary;

	public Employee(String emp_No, String dob, String f_Name, String l_Name, String gender, String hire_Date,
			String salary) {
		super();
		this.emp_No = emp_No;
		this.dob = dob;
		this.f_Name = f_Name;
		this.l_Name = l_Name;
		this.gender = gender;
		this.hire_Date = hire_Date;
		this.salary = salary;
	}

	public String getEmp_No() {
		return emp_No;
	}

	public void setEmp_No(String emp_No) {
		this.emp_No = emp_No;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getF_Name() {
		return f_Name;
	}

	public void setF_Name(String f_Name) {
		this.f_Name = f_Name;
	}

	public String getL_Name() {
		return l_Name;
	}

	public void setL_Name(String l_Name) {
		this.l_Name = l_Name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHire_Date() {
		return hire_Date;
	}

	public void setHire_Date(String hire_Date) {
		this.hire_Date = hire_Date;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "Employee [emp_No=" + emp_No + ", dob=" + dob + ", f_Name=" + f_Name + ", l_Name=" + l_Name + ", gender="
				+ gender + ", hire_Date=" + hire_Date + ", salary=" + salary + "]";
	}

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
	
}
