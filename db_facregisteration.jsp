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
          String  DOB =request.getParameter("DOB");
          String  firstname =request.getParameter("firstname");
           String  lastname =request.getParameter("lastname");
          
           String  gender =request.getParameter("gender");
            String  aadhar =request.getParameter("aadhar");
             String  fname =request.getParameter("fname");
              String  mname =request.getParameter("mname");
               
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
                 String  joining =request.getParameter("joining");
                 String  experience =request.getParameter("experience");
                  String  branch =request.getParameter("branch");
                   String  Course =request.getParameter("Course");
    try{
                
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select  count(*)  from faculty where userid ='"+userid+"'");
          while(rs.next()){ 
          int count=rs.getInt(1);
          if(count==0) 
          {
    int i=st.executeUpdate("insert into faculty values('"+firstname+"','"+lastname+"','"+DOB+"','"+gender+"','"+aadhar+"','"+fname+"','"+mname+"','"+address+"','"+pincode+"','"+mobileno+"','"+email+"','"+userid+"','"+pass+"','"+City+"','"+Religion+"','"+District+"','"+State+"','"+Category+"','"+institute+"','"+institutedistrict+"','"+joining+"','"+experience+"','"+branch+"','"+Course+"')");
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
        window.location="faculty.html";
    </script>
    <%
        }//if
}//while
     }//try
    catch(Exception e){
    out.print(e);
    }
 %>
