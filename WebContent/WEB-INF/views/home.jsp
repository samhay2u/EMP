<%@page import="emp.pojo.User, emp.CommonServlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />
</div>
<div class="row justify-content-center">
	<div class="col-sm-4">
		<div class="card-deck">
		    <div class="card btn btn-success">
		      <a class="text-white" href="/EMP/employees">		        
		        <div class="card-body text-center">
		          <img src="images/employee_pic.jpg" alt="Employees" class="rounded img-thumbnail" />
		          <p class="card-text">Employees</p>
		        </div>
		      </a>        
		    </div>
		</div>
	</div>
</div>
<br/>
<div class="row justify-content-center">	
	 <div class="col-sm-6">
<%
       String userName = "", 
              password = "",
              applicationURL = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/", 
              webServiceURL = applicationURL;

       pageContext.setAttribute("reactURL", applicationURL + "react");
       
       Object obj = session.getAttribute(CommonServlet.SESSION_USER_TOKEN);
	   if (obj != null && obj instanceof User) {
		  User user = (User) obj;
		  webServiceURL += "rest/top5?userName=" + user.getUserId() + "&password=" + user.getUserPassword();
	   }
 %>	 
       <script type = "text/javascript">
         var webServiceURL = "<%=webServiceURL%>";
       </script>
 
	   <c:import url="${reactURL}"/>
	   <div class="text-center"><small>(*Dashboard Demonstration of Web Services)</small></div>
	   <br/>
	 </div>
<jsp:include page="footer.jsp" />
