<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import= "javax.sql.*" %>

 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="style.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="HandheldFriendly" content="true" />
<meta name="MobileOptimized" content="width" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="mystyle.css" media="screen" type="text/css">

  <meta charset="utf-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>Purchase</title>
<style>
#links{
float:right; 
padding:15px; 

color:#352c31;
background-color:white;
margin:5px;
text-decoration:none;
 }


#links:hover{

background-color:#352c31; 
color:white;


}
 

</style>



</head>

<body style="margin-left:10px;">
<br>   
  <span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="admin.jsp"><b id="links">BACK</b></a>
<hr>
<br>
<br>       
 <% 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT * FROM seller;");
out.println("Select the seller to be deleted:<br>"); 
int i=0;
while(rs.next()){
            //Retrieve by column name
			String sid = rs.getString("sid");
			String sname = rs.getString("sellername");
			String semail = rs.getString("selleremail");
%>
			<form action='deleteseller.jsp'><br>
			<input type='checkbox' name='selling' value='<%=sid%> '>
<%
				out.println("SellerID:" + sid + "<br>" + "SellerName:" + sname + "<br>");
			}
            out.println("<br><input type='submit' value='Remove'></form>");
			
			
%>