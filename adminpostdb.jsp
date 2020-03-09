<%-- 
    Document   : register
    Created on : Jun 8, 2018, 3:41:23 PM
    Author     : windows
--%>

<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.*"   %>

<%
                String notificationid =request.getParameter("notificationid");
         String  role =request.getParameter("role");
          String  type =request.getParameter("type");
           String  about =request.getParameter("about");
          
              try{
                
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
         Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select  count(*)  from adminpost where notificationid ='"+notificationid+"'");
          while(rs.next()){ 
          int count=rs.getInt(1);
          if(count==0) 
          {
    int i=st.executeUpdate("insert into adminpost values('"+notificationid+"','"+role+"','"+type+"','"+about+"')");
    if(i==0){
    response.sendRedirect("index.html?msg=notification failed");
    }
    else{
        response.sendRedirect("index.html?msg=notification sent  sucessfull");
    }
    }
    else{
    %>
    <script type="text/javascript" >
        window.alert("notification exists");
        window.location="admin.html";
    </script>
    <%
        }//if
}//while
     }//try
    catch(Exception e){
    out.print(e);
    }
 %>
