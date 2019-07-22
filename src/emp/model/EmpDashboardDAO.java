package emp.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import emp.pojo.TopFiveLastNames;

public class EmpDashboardDAO extends CommonDAO{
	/*
	public List<TopFiveLastNames> topFiveList() {
		List<TopFiveLastNames> list = new ArrayList<TopFiveLastNames>();

		try {
			connect(); // Connect to the database
	//****************************************************************		
			// Execute the Select Query
			ResultSet result = getResultFromQuery("SELECT P.MedRecNo, P.Name, P.DOB, P.Address, P.Insurance, SUM(H.CostOfVist) AS TOTAL_COST FROM patienthx AS H INNER JOIN patients AS P ON H.MedRecNo = P.MedRecNo GROUP BY P.MedRecNo ORDER BY TOTAL_COST DESC, P.Name LIMIT 5");
			
			// Do I have a next row
			while (result.next()) {
				// Get the data from the row
				TopFiveLastNames tf = new TopFiveLastNames(result.getString("MedRecNo"), 
			                             result.getString("Name"), 
			                             result.getString("DOB"), 
			                             result.getString("Address"), 
			                             result.getString("Insurance"), 
			                             result.getDouble("TOTAL_COST"));
				
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
	*/
}


