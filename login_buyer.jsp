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
		   Integer f=0;
           java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
           Statement stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery("SELECT * FROM buyer");
           while(rs.next()){
               String name = rs.getString("buyername");
               String password = rs.getString("password");
			   String userid = rs.getString("buyeremail");
               String bid = rs.getString("bid");
			  
               //Checking if present in table or not
            if((emailEntered.compareTo(userid)==0)){
			 if((passEntered.compareTo(password)==0)){
				 //RequestDispatcher rd = request.getRequestDispatcher("buyer.jsp");
				 //rd.forward(request,response);
				  session.setAttribute("myId",bid);
			   session.setAttribute("myName",name);
			   session.setAttribute("myEmail",userid);
				 response.sendRedirect("buyer.jsp");
				//out.println("Welcome"+name); 
				

			       }
			   
		  }
		   }
		  



		  
     
 out.println("<center><b style='color:red'>Invalid user,Try again</b></center>");
				 %>
				 <br>
				 <br>
				<center><a href="login_buyer.html"><b id="links">TryAgain</b></a></center>
		  

		
		 
  