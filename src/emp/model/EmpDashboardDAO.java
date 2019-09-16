package emp.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import emp.pojo.TopFiveSalaries;

public class EmpDashboardDAO extends CommonDAO{
	
	public List<TopFiveSalaries> topFiveList() {
		List<TopFiveSalaries> list = new ArrayList<TopFiveSalaries>();

		try {
			connect(); // Connect to the database
	//****************************************************************		
			// Execute the Select Query
			ResultSet result = getResultFromQuery("SELECT emp_no, birth_date, first_name, last_name, gender, "
					+ "hire_date, salary from employees order by salary desc limit 5");

			
			// Do I have a next row
			while (result.next()) {
				// Get the data from the row
				TopFiveSalaries tf = new TopFiveSalaries(result.getString("emp_no"), 
			                             result.getString("birth_date"), 
			                             result.getString("first_name"), 
			                             result.getString("last_name"), 
			                             result.getString("hire_date"), 
			                             result.getString("gender"),
										 result.getString("salary"));
				
				list.add(tf);
	//**************************************************************************
			}			
		}
		catch (Exception e) {
			e.printStackTrace();// Log it
		}
		finally {
			close();
		}

		return list;
	}
	
}


