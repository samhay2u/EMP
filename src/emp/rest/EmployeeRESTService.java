package emp.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import emp.model.EmpDashboardDAO;
import emp.model.UserDAO;
import emp.pojo.TopFiveSalaries;
import emp.pojo.User;


@Path("/")
@Produces(MediaType.APPLICATION_JSON)
public class EmployeeRESTService extends EmpDashboardDAO {
	private void validateUser(String userName, String password) throws Exception {
		User user = null;

		try {
			UserDAO userDAO = new UserDAO();
			user = userDAO.validateLogin(userName, password);
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (user == null) {
			throw new Exception("You are not authorized to cosume this data");

		}
	}
	
	@GET
	@Path("/top5")
	public List<TopFiveSalaries> top5(@QueryParam("userName") String userName, @QueryParam("password") String password) throws Exception {
		validateUser(userName, password);

		return topFiveList();
	}
}


