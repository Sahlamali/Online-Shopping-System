<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import= "javax.sql.*" %>
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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     <br>   
  <span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="buyer.jsp"><b id="links">BACK</b></a>
<hr>
<br>
<br>
<% 
//String p = (String)session.getAttribute("demo");
//String bname = (String)session.getAttribute("myName");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
Statement stmt = conn.createStatement();
String bid = (String)session.getAttribute("myId");
String p = request.getParameter("shop");
ResultSet rs = stmt.executeQuery("SELECT * FROM productseller where pid="+p );
			
while(rs.next()){
String pid = rs.getString("pid");
String sid = rs.getString("sid");
String pimg = rs.getString("pimg");
String pname = rs.getString("pname");
String pdescription = rs.getString("pdescription");
String price = rs.getString("price");
%>
<center>
<img src='<%=pimg%>' class="img-thumbnail"/>
<br><br>
<%
out.println(pname+"<br><br>");
out.println(pdescription+"<br><br>");
out.println("Price:Rs "+price+"/-<br><br>");
//out.println(pname);

	
	//String sid="Hai";
//out.println("Successfully deleted the following"+sid);
   %>

<br>

<form action="purchase.jsp">
<input type="checkbox" value='<%=pid%>' name="payment">Add to cart
<br>
<%
 session.setAttribute("PID",pid);
 session.setAttribute("SID",sid);
session.setAttribute("PRICE",price);
session.setAttribute("PImg",pimg);
	%>

<input type="Submit" value="Proceed">
</form>

<%
}
%>
</center>
