
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
         <%//signup for buyer
		   String nameEntered = request.getParameter("name");
           String emailEntered = request.getParameter("email");
           String passEntered = request.getParameter("password");
           Integer num=1;
		   try{

           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root" , "" );
           Statement stmt = conn.createStatement();
		  // out.println("hello"+nameEntered);
		  ResultSet rs = stmt.executeQuery("select * from buyer");
		  while(rs.next()){
		  num=num+1;
		  }
		  Integer bid= 100+num;
		   int i=stmt.executeUpdate("insert into buyer(bid, buyername, password, buyeremail)values('"+bid+"','"+nameEntered+"','"+passEntered+"','"+emailEntered+"')");
          // int i = stmt.executeUpdate("insert into buyer(bid,buyername,password,buyeremail) values('104',"+nameEntered+","+passEntered+","+emailEntered+"')");
           String b=Integer.toString(bid); 
		   session.setAttribute("myId",b);
			   session.setAttribute("myName",nameEntered);
			    session.setAttribute("myEmail",emailEntered);
				 response.sendRedirect("buyer.jsp");
		   }
		   catch(Exception e){
             out.println(e);
			 //e.printStackTrace();
		   }
         
		  %>
  