package emp.pojo;

public class TopFiveSalaries extends Employee {
	
	private static final long serialVersionUID = 1L;
	
	
	private String fullname;


	public TopFiveSalaries(String emp_No, String dob, String f_Name, String l_Name, String hire_Date, String gender,
			String salary) { 
		super(emp_No, dob, f_Name, l_Name, gender, hire_Date, salary);
		fullname = f_Name + " " + l_Name;
		
		// TODO Auto-generated constructor stub
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	
	

}
