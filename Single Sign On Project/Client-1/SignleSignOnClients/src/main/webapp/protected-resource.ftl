<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

h2{
	text-align: center;
}


.container {
    padding: 16px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}
</style>
</head>
<body>

<div  class="modal1">
 
	<div class="container">
   		<h2 >Hello, ${Request.username!}</h2>
   		<h2>Welcome to Single Sign On - Client 1 </h2>
    	<a href="/logout">Logout</a>	
    </div>

</div>


</body>
</html>
