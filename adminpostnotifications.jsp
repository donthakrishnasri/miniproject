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
    width: 850px;
    height: 350px;
    padding: 12px 20px;
    margin-left:100px ;
    
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
    width: 40%;
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

<body>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
     <h1 align ="center" >MAHAVEER INSTITUTE OF SCIENCE AND TECHNOLOGY</h1>
      <h1 align ="center" >POST NOTIFICATIONS</h1>
  
    
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
    <div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="studenthome.html">Home</a></li>
       
         <li><a class="btn" href="adminpostnotifications.jsp">Post notification</a></li>
               <li><a class="btn" href="student.html">Logout</a></li>

       
         
      
    </ul>
          

    <!-- ################################################################################################ -->
  </nav>
</div>
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/ytr.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <h2>POST NOTIFICATIONS</h2>

<form name ="reg" action="adminpostdb.jsp" method="post"  onsubmit="return validate()">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

 
    
    <center>
        <label><font color=5"white" >Notification id:</label>
        <field name="notificationid" style="color:black;" attrs="{'readonly':[('state', '=', 'done')]}"/>          
<textarea rows="1" cols="5" placeholder="Enter notificationid " name="notificationid"></textarea>
&nbsp;
<label><font color="white" >role</label>
        <field name="role" style="color:black;" attrs="{'readonly':[('state', '=', 'done')]}"/>          
<textarea rows="1" cols="5" placeholder="Enter role " name="role"></textarea>
        &nbsp;
        
        
     
        &nbsp;
        <label><font color="white" >Notification Type:</label>
        <field name="type" style="color: black;" attrs="{'readonly':[('state', '=', 'done')]}"/>
    <select name="type">

  <option value="-1" selected>select type...</option>

  <option value="regularfee">REGULAR FEE</option>

  <option value="supplimentaryfee">SUPPLIMENTARY FEE</option>

    </select>
        &nbsp;
          <label><font color="white" >About</label>
        <field name="about" style="color: black;" attrs="{'readonly':[('state', '=', 'done')]}"/>
        <textarea rows="10" cols="50" placeholder="Enter content" name="about"></textarea>
    &nbsp;
    
     
    
        <button  type="submit">Send</button>
        </center>
  </div>

  
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