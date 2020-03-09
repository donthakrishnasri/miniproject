
<!DOCTYPE html>
<%
                String userid =(String)session.getAttribute("userid");
                %>
<html lang="">

<head>
<title>Mist</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="studenthome.jsp">Home</a></li>
       <li><a class="btn" href="stprofile.jsp">View profile</a></li>
       <li><a class="btn" href="stviewmarks.jsp">View marks</a></li>
         <li><a class="btn" href="stviewtnotifications.jsp">View  notification</a></li>
               <li><a class="btn" href="student.html">Logout</a></li>

    </ul>
    <div id="menu1">
            <h2>WelCome:<%=userid%></h2>
        </div>
          

    <!-- ################################################################################################ -->
  </nav>
</div>

<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/hjuke.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <p> Learn,Enjoy and Explore. </p>
      <h3 class="heading">Let us dream big and achieve them.</h3>
      <p>Come and join  to implement  ideas .</p>
    </article>
    
    <!-- ################################################################################################ -->
  </div>
</div>

<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>