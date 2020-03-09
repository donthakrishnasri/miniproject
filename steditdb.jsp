<%-- 
    Document   : passwordchange
    Created on : Jun 12, 2018, 8:40:54 PM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@page  import = "java.sql.*"  %>
          <%
                String userid =(String)session.getAttribute("userid");
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
         int i=st.executeUpdate("update student set firstname='"+firstname+"',lastname='"+lastname+"',DOB='"+DOB+"',gender='"+gender+"',aadhar='"+aadhar+"',fname='"+fname+"',mname='"+mname+"', profession='"+profession+"',address='"+address+"',pincode='"+pincode+"',mobileno='"+mobileno+"',email='"+email+"',city='"+City+"',Religion='"+Religion+"',District='"+District+"',State='"+State+"',category='"+Category+"',institute='"+institute+"',institutedistrict='"+institutedistrict+"',completionyear='"+completionyear+"',branch='"+branch+"',course='"+Course+"'  where userid='"+userid+"' ");
         if(i>0)
         {
             %>
             <script type="text/javascript">
                  window.alert("profile  changed sucessfully"); 
           window.location="stprofile.jsp";
           </script>
           <%
         }
else
{
%>
             <script type="text/javascript">
                  window.alert("profile failed to change"); 
           window.location="stueditprofile.jsp";
           </script>
           <%
}
           }
           catch(Exception e){
               out.println(e);
           }
%>