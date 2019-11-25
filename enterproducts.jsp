<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
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


<body>
 <br>
<span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="login.html"><b id="links">BACK</b></a>
<hr>
   <%
      String sid = (String)session.getAttribute("myId");
	  String name=request.getParameter("pname");
	  String img=request.getParameter("pic");
	  String det=request.getParameter("pdesc");
	  String price=request.getParameter("price");
	  int num=0;
	  Class.forName("com.mysql.jdbc.Driver");
      java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );

Statement st= con.createStatement();
 ResultSet rs = st.executeQuery("select * from productseller");
		  while(rs.next()){
		  num=num+1;
		  }
		  Integer bid= 200+num;
int i=st.executeUpdate("insert into productseller(pid,pname,pimg,pdescription,price,sid)values('"+bid+"','"+name+"','"+img+"','"+det+"','"+price+"','"+sid+"')");
out.println("<br><br><b style='margin-left:10px'>Product Entered successfully</b>");
  %>
 
  <a href="seller.jsp" id="linksbelow">Click to see the Product List</a>
</body>
</html>