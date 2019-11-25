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
 
 #each_img{
border: 1px solid black;

padding-top:10px;
padding-bottom:10px;
margin-left:250px;
margin-right:250px;
 }

</style>

<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 <br>
<span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="login.html"><b id="links">BACK</b></a>
<hr>
<%
String sid = (String)session.getAttribute("myId");
String sname = (String)session.getAttribute("myName");
String semail = (String)session.getAttribute("myEmail");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
Statement stmt = conn.createStatement();

//out.println("Hello"+bid);
ResultSet rs = stmt.executeQuery("SELECT pid, pname, pimg, price,sid FROM productseller");


	//String bname = bid;
	//String bid_ = r.getString("bid");

    out.println("<b style='font-size:20px;color:blue'><i><center>Welcome "+sname+"</center></i></b>");


//out.println("welcome"+bname);

%>
<h2 style="margin-left:20px;">Products you are selling</h2>
<center>
<div class="container">

<%
while(rs.next())
	{   
		String id = rs.getString("pid");
		String sellerid = rs.getString("sid");
		String imgid = rs.getString("pimg");
		String name = rs.getString("pname");
		int cost = rs.getInt("price");
		//session.setAttribute("temp", id);
		
		%>
		
		<!-- To print the details of each product
		 Image of each product-->
		 <% if((sid.compareTo(sellerid)==0)){
			
			  
%>
		<div id="each_img">
		<img src='<%=imgid%>' class="img-thumbnail" width="50%" height="50%" />
		
		<!-- <input type="radio" value="<%=id%>" name="shop">
		Name and cost of the product-->

		<h4><%=name%></h4>
		<h4>Rs <%=cost%>/-</h4>
	 <%}
		%>
		
		
		</div>
		<br>
		<br>
		<%	//Move to the buyer_purchase when we click on an image//
			//Pass the id of image tonext page//
	}
	session.setAttribute("myId",sid);
%>
</div>
<a href="enterproducts.html"style="text-decoration:none;"><b id="linksbelow">Enter Products</b></a>
<a href="removeproducts.jsp" style="text-decoration:none;"><b id="linksbelow">Remove Products</b></a>
<a href="sellertransaction.jsp" style="text-decoration:none;"><b id="linksbelow">Show Transactions</b></a>
<br>
<br>
</center>