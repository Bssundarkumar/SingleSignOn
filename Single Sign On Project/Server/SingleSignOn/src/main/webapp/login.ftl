<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

h2{
	text-align: center;
}
/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
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
 
  <form method="POST" action="/login?redirect=${RequestParameters.redirect!}" class="modal-content animate">
     <div class="container">
    <h2>Single Sign On</h2>
     <label><b>Username</b></label>
    <input class="center" name="username" type="text" placeholder="Username"
           autofocus="true"/>
     <label><b>Password</b></label>
    <input class="center" name="password" type="password" placeholder="Password"/>
    <div style="color: red">${error!}</div>
    <br/>
    <button class="center" type="submit">Log In</button>
    </div>
</form>
</div>

**Please use Username and Password as follows:
 user1:  "satya"   &     "password"
 user2:  "sundar"  &   "password"
 user3:  "kumar"   &   "password"



</body>
</html>
