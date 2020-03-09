
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
      <li class="active"><a href="facultyhome.jsp">Home</a></li>
       <li><a class="btn" href="faviewprofile.jsp">View profile</a></li>
       <li><a class="btn" href="marks.jsp">Update marks</a></li>
      
               <li><a class="btn" href="faculty.html">Logout</a></li>

       
         
      
    </ul>
          <div id="menu1">
            <h2>WelCome:<%=userid%></h2>
        </div>
          

    <!-- ################################################################################################ -->
  </nav>
</div>

<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/zaa.jpg');">
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
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>