
<%@page import=" java.sql.Connection"%>
<%@page import=" java.sql.DriverManager"%>
<%@page import ="java.sql.Statement"%>
<%@page import=" java.sql.ResultSet"%>
               
                <html>
   
    <head>
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input{
    width: 100px;
    border-radius:5px;
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
.my{
   column-count: 3; /* Chrome, Safari, Opera */
  column-count: 3; /* Firefox */
    column-count: 3;
    column-gap: 40px; /* Chrome, Safari, Opera */
    column-gap: 40px; /* Firefox */
    column-gap: 40px;
    column-rule-style: solid; /* Chrome, Safari, Opera */
    column-rule-style: solid; /* Firefox */
    column-rule-style: solid;
    

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
    </head>
        <body id="top">
            <div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="fr15.jsp">Home</a></li>
       <li><a class="btn" href="faviewprofile.jsp">View profile</a></li>
       <li><a class="btn" href="marks.jsp">Update marks</a></li>
         <li><a class="btn" href="facpostnotifications.jsp">Post notification</a></li>
         <li><a class="btn" href="facfeedback.jsp">Feedback</a></li>
               <li><a class="btn" href="faculty.html">Logout</a></li>
      
    </ul>

    <!-- ################################################################################################ -->
  </nav>
</div>
           
            <form action="f15totaldb.jsp">
            <table align="center" border="1">
               
                    <tr><th>RollNo</th><th>Subjectname</th><th>internal</th><th>external</th><th>total</th><th>credits</th><th>result</th>
               </tr>
               <%
                   String P=null;
                   String F=null;
                   
                  
                   try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
        System.out.println("connection success");
            Statement st1= con.createStatement();
       ResultSet rs1 = st1.executeQuery("select f1.rollno,f1.sub1,f1.sub2,f1.sub3,f1.sub4,f1.sub5,f1.sub6,f1.lab1,f1.lab2,f2.sub1,f2.sub2,f2.sub3,f2.sub4,f2.sub5,f2.sub6,f2.lab1,f2.lab2, round((f1.sub1+f2.sub1)),round((f1.sub2+f2.sub2)),round(f1.sub3+f2.sub3),round(f1.sub4+f2.sub4),round(f1.sub5+f2.sub5),round(f1.sub6+f2.sub6),round(f1.lab1+f2.lab1),round(f1.lab2+f2.lab2) from f15itavgdb f1,f15itexternaldb f2 where f1.rollno=f2.rollno");
          while(rs1.next()){ 
               int internal1=Integer.parseInt(rs1.getString("f1.sub1"));
                int external1=Integer.parseInt(rs1.getString("f2.sub1"));
                int total1=internal1+external1;
                
                 int internal2=Integer.parseInt(rs1.getString("f1.sub2"));
                int external2=Integer.parseInt(rs1.getString("f2.sub2"));
                int total2=internal2+external2;
                
                 int internal3=Integer.parseInt(rs1.getString("f1.sub3"));
                int external3=Integer.parseInt(rs1.getString("f2.sub3"));
                int total3=internal3+external3;
                
                 int internal4=Integer.parseInt(rs1.getString("f1.sub4"));
                int external4=Integer.parseInt(rs1.getString("f2.sub4"));
                int total4=internal4+external4;
                
                int internal5=Integer.parseInt(rs1.getString("f1.sub5"));
                int external5=Integer.parseInt(rs1.getString("f2.sub5"));
                int total5=internal5+external5;
                
                 int internal6=Integer.parseInt(rs1.getString("f1.sub6"));
                int external6=Integer.parseInt(rs1.getString("f2.sub6"));
                int total6=internal6+external6;
                
                int internallab1=Integer.parseInt(rs1.getString("f1.lab1"));
                 int externallab1=Integer.parseInt(rs1.getString("f2.lab1"));
                 int ltotal1=internallab1+externallab1;
                 
                 int internallab2=Integer.parseInt(rs1.getString("f1.lab2"));
                 int externallab2=Integer.parseInt(rs1.getString("f2.lab2"));
                 int ltotal2=internallab2+externallab2;
                
                
               
                %>
                <tr><td><%=rs1.getString("rollno")%></td><td>sub1</td>
              <td><%=rs1.getString("f1.sub1")%></td>
          <td><%=rs1.getString("f2.sub1")%></td>
          <td><%=total1%></td>
               <%if(external1>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
<tr><td><%=rs1.getString("rollno")%></td><td>sub2</td>
              <td><%=rs1.getString("f1.sub2")%></td>
          <td><%=rs1.getString("f2.sub2")%></td>
          <td><%=total2%></td>
               <%if(external2>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
                
<tr><td><%=rs1.getString("rollno")%></td><td>sub3</td>
              <td><%=rs1.getString("f1.sub3")%></td>
          <td><%=rs1.getString("f2.sub3")%></td>
          <td><%=total3%></td>
               <%if(external3>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
                 
<tr><td><%=rs1.getString("rollno")%></td><td>sub4</td>
              <td><%=rs1.getString("f1.sub4")%></td>
          <td><%=rs1.getString("f2.sub4")%></td>
          <td><%=total4%></td>
               <%if(external4>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
               
<tr><td><%=rs1.getString("rollno")%></td><td>sub5</td>
              <td><%=rs1.getString("f1.sub5")%></td>
          <td><%=rs1.getString("f2.sub5")%></td>
          <td><%=total5%></td>
               <%if(external5>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
                 
<tr><td><%=rs1.getString("rollno")%></td><td>sub6</td>
              <td><%=rs1.getString("f1.sub6")%></td>
          <td><%=rs1.getString("f2.sub6")%></td>
          <td><%=total6%></td>
               <%if(external6>26){
               %>
          
          <td><%=4%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
                
<tr><td><%=rs1.getString("rollno")%></td><td>Lab1</td>
              <td><%=internallab1%></td>
          <td><%=externallab1%></td>
          <td><%=ltotal1%></td>
               <%if(externallab1>=25){
               %>
          
          <td><%=2%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
                <tr><td><%=rs1.getString("rollno")%></td><td>Lab2</td>
              <td><%=internallab1%></td>
          <td><%=externallab2%></td>
          <td><%=ltotal2%></td>
               <%if(externallab2>=25){
               %>
          
          <td><%=2%></td>
          <td>P</td>
          
      <%  }else{%>
<td><%=0%></td>
<td>F</td>
<%}%>
                </tr>
<%}
                   }
        catch(Exception e){
            System.out.println(e);
        }      
             %>
                 </table>
        </form>
                 <div id="summery" style="width:700px;height:100px;border:1px solid black;margin-left: 400px;">
                     <table border="1">
                         <tr><th>Rollno</th><th>sub1</th><th>sub2</th>
                         <th>sub3</th>
                         <th>sub4</th>
                         <th>sub5</th>
                         <th>sub6</th>
                         <th>lab1</th>
                         <th>lab2</th>
                         <th>total</th>
                         <th>percentage</th>
                         </tr>
                     <%try{
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
                     Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *  from f15ittotaldb order by percent desc limit 3");
                while(rs.next()){
                  
                   String rollno=rs.getString("rollno");
                   String  sub1=rs.getString("sub1");
                    String sub2=rs.getString("sub2");
                    String sub3=rs.getString("sub3");
                    String sub4=rs.getString("sub4");
                     String sub5=rs.getString("sub5");
                      String sub6=rs.getString("sub6");
                       String lab1=rs.getString("lab1");
                        String lab2=rs.getString("lab2");
                         String total=rs.getString("total");
                          String percent=rs.getString("percent");
             
             
                     %>
                   
                         <tr><td><%=rollno%></td><td><%=sub1%></td><td><%=sub2%></td>
                      
                             <td><%=sub3%></td>
                             <td><%=sub4%></td>
                             <td><%=sub5%></td>
                             <td><%=sub6%></td>
                             <td><%=lab1%></td>
                             <td><%=lab2%></td>
                             <td><%=total%></td>
                             <td><%=percent %></td></tr>     
                    <%  
                     
                }
                     }catch(Exception e){
                     out.println(e);
}%>
                 </table>
                 </div>
           </body>
</html>
