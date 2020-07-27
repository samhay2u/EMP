package emp.pojo;

public class TopFiveSalaries extends Employee {
	
	private static final long serialVersionUID = 1L;
	
	
	private String fullname;

	public TopFiveSalaries(String emp_No, String fullname, String dob, String hire_Date, String gender, String salary) { 
		super(emp_No, dob, null, null, gender,  hire_Date, salary);
		this.fullname = fullname;
		
		// TODO Auto-generated constructor stub
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	
	

}
