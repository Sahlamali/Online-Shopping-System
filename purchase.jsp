<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="style.css" rel="stylesheet">
    <title>Purchase</title>
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

<body style="margin-left:20px;margin-right:20px;">
  
	
	
	<%
    String bid = (String)session.getAttribute("myId");
	String p = (String)session.getAttribute("PID");
	String price = (String)session.getAttribute("PRICE");
	String pimg = (String)session.getAttribute("PImg");
	String bname = (String)session.getAttribute("myName");
	String bemail = (String)session.getAttribute("myEmail");
	//out.println(p+"Hai"+bname);

    




	%>
    
   <br>   
  <span class="h1" style="color:#352c31;"><b>Online Shopping System</b></span>
<a href="home.html"><b id="links">HOME</b></a>
<a href="buyer.jsp"><b id="links">BACK</b></a>
<hr>
<br>
<br>

    <div style="display: flex">

        <div class="imagebox">
            <img src="<%=pimg%>"  height="80%" width="80%">
        </div>

        <!--Input Form-->
		<div style="margin-left:0px;  margin-right:70px;">
        <form class="myForm" id="myForm" name="myForm" action="purchaseproduct.jsp">
		    NAME
			<br>
            <input class="element" type="text"  id="name" name="name" value="<%=bname%>">
            <br>
			PHONE NUMBER
			<br>
            <input class="element" type="text"  id="no" name="no">
            EMAIL ID
			<br><input class="element" type="text"  id="id" name="id" value="<%=bemail%>">
            <br>
            AMOUNT
			<br><input class="element" type="text"  id="cash" name="cash" value="<%=price%>">
            <br>

            <!--Enter card details-->
            <div class="card">
                <p class="card_para">CARD NO.</p>
                <br>
                <input class="card_in_sec1" type="text" placeholder="xxxx xxxx xxxx xxxx" id="card" name="card">
                <br>
                <p class="card_para">NAME ON CARD</p>
                <br>
                <input class="card_in_sec1" type="text"  id="cname" name="cname">
                <br>
                <p class="card_para">EXPIRY DATE</p>
                <br>
                <input class="card_in_sec2" type="text" placeholder="MM/YY" id="month" name="month">
                <input class="card_in_sec3" type="text" placeholder="CVV" id="cvv" name="cvv">
            </div>
            <!--card ends-->
<br>
            <input class="submit_btn" type="submit" value="SUBMIT" id="submit" >
			<br>
        </form>
		</div>
<br>
    </div>
<script src="./app.js"></script>
<br>
</body>

</html>