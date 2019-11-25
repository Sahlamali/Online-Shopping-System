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
           String email = request.getParameter("email");
           String pass = request.getParameter("password");
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
           Statement stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery("SELECT * FROM seller");
           while(rs.next()){
               String name = rs.getString("sellername");
               String password = rs.getString("password");
			   String userid = rs.getString("selleremail");
               String bid = rs.getString("sid");
			  
               //Checking if present in table or not
            if((userid.compareTo(email)==0)){
			 if((password.compareTo(pass)==0)){
				 //RequestDispatcher rd = request.getRequestDispatcher("buyer.jsp");
				 //rd.forward(request,response);
				
				  session.setAttribute("myId",bid);
			   session.setAttribute("myName",name);
			   session.setAttribute("myEmail",userid);
				 response.sendRedirect("seller.jsp");
				//out.println("Welcome"+name); 
				
			       }
			
			 
            
			}
		   }
         
		  %>
  <center><b style='color:red'>Invalid user,Try again</b></center>
				
				 <br>
				 <br>
				<center><a href="login_seller.html"><b id="links">TryAgain</b></a></center>
		  