<!DOCTYPE html>
<html lang="">

<head>
<title>Mist</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

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

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
    width: 400px;
    margin-left: 400px;
}

span.psw {
    float: right;
    padding-top: 16px;
}
span.sss {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

<body id="top">
    
    
    <!-- ################################################################################################ -->
 <div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace">
        <li><a href="index.html"><i class="fas fa-home fa-lg"></i></a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="nospace">
        <li><i class="fas fa-phone rgtspace-5"></i>8341869440</li>
        <li><i class="fas fa-envelope rgtspace-5"></i> poshettymanisha99.com</li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="index.html">Home</a></li>
      <li><a class="btn" href="student.html">Student</a>
      </li>
      <li><a class="btn" href="faculty.html">Faculty</a>
        
            </li>
            <li><a class="btn" href="admin.html">Admin</a>
      </li>
    </ul>
          

    <!-- ################################################################################################ -->
  </nav>
</div>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
     <h1 align ="center" >MAHAVEER INSTITUTE OF SCIENCE AND TECHNOLOGY</h1>
      <h1 align ="center" >STUDENT  FORGOT PASSWORD PAGE</h1>
      
     
    </div>
      
    
     <script type="text/javascript">
              function validate()
            {
                  var b = document.reg.email.value;
                  if(b.indexOf('@',0)<0){
                    alert("email id must contain @");
                    document.reg.email.focus();
                    return false;
                }
                if(b.indexOf('.',0)<0)
                {
                    alert("email id must contain .");
                    document.reg.email.focus();
                    return false;
                }
                return true;
            }
            
        </script>
    </header>
</div>
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/u.png');">
  <div id="pageintro" class="hoc clear"> 
    <h2>Login Form</h2>

<form name ="reg" action="stuforgotdb.jsp" method="post"  onsubmit="return validate()">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
      <field name="email" style="color:black;" attrs="{'readonly':[('state', '=', 'done')]}"/>          
    <input type="text" placeholder="Enter Email ID" name="email" required>
    <button type="submit" >Submit</button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <span class="psw"> <a href="student.html">Login</a></span>
    <button type="button" class="cancelbtn">Cancel</button>
    
  </div>
</form>

  </div>
</div>
   <div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="mist1.html">MIST</a></p>
         

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>