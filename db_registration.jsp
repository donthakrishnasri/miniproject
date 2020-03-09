<%-- 
    Document   : register
    Created on : Jun 8, 2018, 3:41:23 PM
    Author     : windows
--%>

<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*"   %>

<%
   
        String  userid =request.getParameter("userid");
         String  pass =request.getParameter("pass");
          String  firstname =request.getParameter("firstname");
           String  lastname =request.getParameter("lastname");
          String  DOB =request.getParameter("DOB");
           String  gender =request.getParameter("gender");
            String  aadhar =request.getParameter("aadhar");
             String  fname =request.getParameter("fname");
              String  mname =request.getParameter("mname");
               String  profession =request.getParameter("profession");
                String  address =request.getParameter("address");
                String  pincode =request.getParameter("pincode");
                String  mobileno =request.getParameter("mobileno");
                String  email =request.getParameter("email");
                String  City =request.getParameter("City");
                String  Religion =request.getParameter("Religion");
                String  District =request.getParameter("District");
                String  State =request.getParameter("State");
                String  Category =request.getParameter("Category");
                String  institute =request.getParameter("institute");
                String  institutedistrict =request.getParameter("institutedistrict");
                 String  completionyear =request.getParameter("completionyear");
                  String  branch =request.getParameter("branch");
                   String  Course =request.getParameter("Course");
    try{
                
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select  count(*)  from student where userid ='"+userid+"'");
          while(rs.next()){ 
          int count=rs.getInt(1);
          if(count==0) 
          {
    int i=st.executeUpdate("insert into student values('"+userid+"','"+pass+"','"+firstname+"','"+lastname+"','"+DOB+"','"+gender+"','"+aadhar+"','"+fname+"','"+mname+"','"+profession+"','"+address+"','"+pincode+"','"+mobileno+"','"+email+"','"+City+"','"+Religion+"','"+District+"','"+State+"','"+Category+"','"+institute+"','"+institutedistrict+"','"+completionyear+"','"+branch+"','"+Course+"')");
    if(i==0){
    response.sendRedirect("index.html?msg=registration failed");
    }
    else{
        response.sendRedirect("index.html?msg=registration sucessfull");
    }
    }
    else{
    %>
    <script type="text/javascript" >
        window.alert("email id already exists");
        window.location="student.html";
    </script>
    <%
        }//if
}//while
     }//try
    catch(Exception e){
    out.print(e);
    }
 %>
