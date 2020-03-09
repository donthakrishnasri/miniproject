
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import = "java.sql.*"  %>
<%
                String userid =(String)session.getAttribute("userid");
                %>
<html lang="">

<head>
<title>Mist</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
            #menu {
                width:100%;
                height:50px;
                border:2px solid black;
                background:lightgrey;
            }
             ul li{
                list-style: none;
                float:left;
                width:200px;
                font-weight:bold;
            }
            ul li a {
                text-decoration: none;
            }
            a:hover{
                background:red; 
                width:150px;
                height:150px;
            }
            #menu1 {
                width:100%;
                height:500px;
                border:1px solid black;
                margin-top:20px;
                margin-right: 100px;
            }
            table{
                border:1px solidblue;
                margin-top:200px;
                margin_left:200px;
            }
            #profilepic{
                width:300px;
                height:200px;
                float:right;
                margin-top:100px;
                margin-right:100px;
                
            }
            </style>
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
      <li><a class="btn" href="stueditprofile.jsp">Edit Profile</a></li>
    </ul>

    <!-- ################################################################################################ -->
  </nav>
</div>
    <div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/dell.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
        <table cellspacing ="5px" cellpadding="5px" border="1" >
            
       
            
            <%
                try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select  * from student where userid ='"+userid+"' ");
          while(rs.next())
          {
              %>
        
              <tr><td><font color="BLUE">userid</td><td><font color="green"><input type="text" name ="userid" value="<%=rs.getString(1)%>"></td></tr>
              <tr><td><font color="BLUE">pass</td><td><font color="green"><input type="password" name="pass" value="<%=rs.getString(2)%>"></td></tr>
              <tr><td><font color="BLUE">firstname</td><td><font color="green"><input type="text" name="firstname"  value="<%=rs.getString(3)%>"></td></tr>
               <tr><td><font color="BLUE">lastname</td><td><font color="green"><input type="text" name ="lastname" value="<%=rs.getString(4)%>"></td></tr>
              <tr><td><font color="BLUE">DOB</td><td><font color="green"><input type="date" name="DOB" value="<%=rs.getString(5)%>"></td></tr>
              <tr><td><font color="BLUE">gender</td><td><font color="green"><input type="text" name="gender" value="<%=rs.getString(6)%>"></td></tr>
               <tr><td><font color="BLUE">aadhar</td><td><font color="green"><input type="text" name ="aadhar" value="<%=rs.getString(7)%>"></td></tr>
              <tr><td><font color="BLUE">fname</td><td><font color="green"><input type="text" name="fname" value="<%=rs.getString(8)%>"></td></tr>
              <tr><td><font color="BLUE">mname</td><td><font color="green"><input type="text" name="mname" value="<%=rs.getString(9)%>"></td></tr>
               <tr><td><font color="BLUE">profession</td><td><font color="green"><input type="text" name ="profession" value="<%=rs.getString(10)%>"></td></tr>
              <tr><td><font color="BLUE">address</td><td><font color="green"><input type="text" name="address" value="<%=rs.getString(11)%>"></td></tr>
              <tr><td><font color="BLUE">pincode</td><td><font color="green"><input type="text" name="pincode" value="<%=rs.getString(12)%>"></td></tr>
               <tr><td><font color="BLUE">mobileno</td><td><font color="green"><input type="text" name ="mobileno" value="<%=rs.getString(13)%>"></td></tr>
              <tr><td><font color="BLUE">email</td><td><font color="green"><input type="text" name="email" value="<%=rs.getString(14)%>"></td></tr>
              <tr><td><font color="BLUE">city</td><td><font color="green"><input type="text" name="city" value="<%=rs.getString(15)%>"></td></tr>
               <tr><td><font color="BLUE">Religion</td><td><font color="green"><input type="text" name ="Religion" value="<%=rs.getString(16)%>"></td></tr>
              <tr><td><font color="BLUE">District</td><td><font color="green"><input type="text" name="District" value="<%=rs.getString(17)%>"></td></tr>
              <tr><td><font color="BLUE">State</td><td><font color="green"><input type="text" name="State" value="<%=rs.getString(18)%>"></td></tr>
               <tr><td><font color="BLUE">category</td><td><font color="green"><input type="text" name ="category" value="<%=rs.getString(19)%>"></td></tr>
              <tr><td><font color="BLUE">institute</td><td><font color="green"><input type="text" name="institute" value="<%=rs.getString(20)%>"></td></tr>
              <tr><td><font color="BLUE">institutedistrict</td><td><font color="green"><input type="text" name="institutedistrict" value="<%=rs.getString(21)%>"></td></tr>
               <tr><td><font color="BLUE">completionyear</td><td><font color="green"><input type="text" name ="completionyear" value="<%=rs.getString(22)%>"></td></tr>
              <tr><td><font color="BLUE">branch</td><td><font color="green"><input type="text" name="branch" value="<%=rs.getString(23)%>"></td></tr>
              <tr><td><font color="BLUE">course</td><td><font color="green"><input type="text" name="course" value="<%=rs.getString(24)%>"></td></tr>


                  <%    
}
          }

catch(Exception e)
{
out.println(e);
} 
                  %>
                  </table>
                    <div id="menu1">
                      <div id="profilepic">
                          
                      </div>
                  </div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

     
    </article>
    
    <!-- ################################################################################################ -->
  </div>
</div>


<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>