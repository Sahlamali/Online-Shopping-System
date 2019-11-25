
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

           ResultSet rs = stmt.executeQuery("select * from seller");
		  while(rs.next()){
		  num=num+1;
		  }
		  Integer sid= 300+num;


		   int i=stmt.executeUpdate("insert into seller(sid, sellername, password, selleremail)values('"+sid+"','"+nameEntered+"','"+passEntered+"','"+emailEntered+"')");
          // int i = stmt.executeUpdate("insert into buyer(bid,buyername,password,buyeremail) values('104',"+nameEntered+","+passEntered+","+emailEntered+"')");
           String s=Integer.toString(sid);
		   session.setAttribute("myId",s);
			   session.setAttribute("myName",nameEntered);
			   session.setAttribute("myEmail",emailEntered);
				 response.sendRedirect("seller.jsp");
		   }
		   catch(Exception e){
             out.println(e);
			 //e.printStackTrace();
		   }
         
		  %>
  