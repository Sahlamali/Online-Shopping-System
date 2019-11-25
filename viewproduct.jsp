<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import= "javax.sql.*" %>
<html>



<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
#links{
float:right; 
padding:15px; 

color:#352c31;
background-color:white;
margin:5px;
text-decoration:none;
 }

#linksbelow{

padding:15px; 

color:white;
background-color:#352c31;
margin:5px;
text-decoration:none;
 }
#linksbelow:hover{

background-color:white;
color:#352c31; 


}

#links:hover{

background-color:#352c31; 
color:white;


}
 </style>


<body style="margin-left:10px;">
 <br>
<span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="admin.jsp"><b id="links">BACK</b></a>
<hr>
  <br>
  <h2>Products List</h2>
 <% 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
Statement stmt = conn.createStatement();



			
			
			ResultSet rs=stmt.executeQuery("select *  from productseller");
			while(rs.next())
	{   
		String id = rs.getString("pid");
		String pimg = rs.getString("pimg");
		String name = rs.getString("pname");
		out.println("<li>Product ID: "+id);
		out.println("<br>Product Name: "+name+"<br>");
	%>
	<img src='<%=pimg%>' class="img-thumbnail"width="30%" height="30%"/>
	<br>
	<%
	}   
		%>
         
			<br>
			<br>
			