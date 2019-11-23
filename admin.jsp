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
<a href="login.html"><b id="links">BACK</b></a>
<hr>

<form action="transaction.jsp" method="get">
<center>

<h2>Admin Page</h2>

<br>
<br>
<br>
<a href="transaction.jsp"style="text-decoration:none;"><b id="linksbelow">Transactions</b></a>
<a href="admin_seller.jsp" style="text-decoration:none;"><b id="linksbelow">Delete Seller</b></a>
<a href="admin_buyer.jsp" style="text-decoration:none;"><b id="linksbelow">Delete Buyer</b></a>
<a href="admin_product.jsp" style="text-decoration:none;"><b id="linksbelow">Delete Product</b></a>
<a href="viewseller.jsp" style="text-decoration:none;"><b id="linksbelow">View Seller List</b></a>
<a href="viewbuyer.jsp" style="text-decoration:none;"><b id="linksbelow">View Buyer List</b></a>
<a href="viewproduct.jsp" style="text-decoration:none;"><b id="linksbelow">View Product List</b></a>
<br>
<br>

</body>
</html>
