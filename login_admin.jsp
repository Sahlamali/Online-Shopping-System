<style>
#links{
text-align:center; 
padding:20px;
color:white;
background-color:red;


 }


a #links:hover{

background-color:white; 
color:red;
text-decoration:none;

}


</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
         <%//login for buyer
           String emailEntered = request.getParameter("email");
           String passEntered = request.getParameter("password");
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
           Statement stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery("SELECT * FROM admin");
           while(rs.next()){
               String name = rs.getString("adminname");
               String password = rs.getString("password");
			   
               //Checking if present in table or not
            if((emailEntered.compareTo(name)==0)){
			 if((passEntered.compareTo(password)==0)){
				 //RequestDispatcher rd = request.getRequestDispatcher("buyer.jsp");
				 //rd.forward(request,response);
				  
				 response.sendRedirect("admin.jsp");
				//out.println("Welcome"+name); 
				
			       }
			 else{
				 out.println("<center><b style='color:red'>Invalid user,Try again</b></center>");
				 %>
				 <br>
				 <br>
				<center><a href="login_admin.html"><b id="links">TryAgain</b></a></center>
<%
         			}
            }
		  else{
 out.println("<center><b style='color:red'>Invalid user,Try again</b></center>");
				 %>
				 <br>
				 <br>
				<center><a href="login_admin.html"><b id="links">TryAgain</b></a></center>

<%
		  }
		   }
         
		  %>
  