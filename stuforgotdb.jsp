<%-- 
    Document   : forgotdb
    Created on : Jun 9, 2018, 11:12:42 PM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import = "java.sql.*"  %>
<%@page  import = "java.util.Random" %>
<%@page  import = "com.mail.Mail" %>
<%
    String email=request.getParameter("email");
    Random r =new Random();
    int ii=r.nextInt(100000-5000)+5000;
    String k=ii+"";
    String msg="Name:"+email+"\n\nOTP:"+k;
    try{
        Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
       Statement st = con.createStatement();
         ResultSet rs = st.executeQuery("select * from student where email='"+email+"'");
         if(rs.next()){
             Mail m=new Mail();
             m.secretMail(msg,email,email);
             int i =st.executeUpdate("insert into stotp values('"+email+"','"+k+"',now(),'waiting')");
             if(i!=0)
             {
                 session.setAttribute("email", email);
                 %>
                 <script type="text/javascript">
                     window.alert("otp generated and sent to registered email");
                     window.location="stotp.jsp";
                     </script>
                     <%}else{%>
                     <script type="text/javascript">
                     window.alert("otp generation failed ");
                     window.location="forgotstu.jsp";
                     </script>
                   
<%
}
} else{
                    %>
                     <script type="text/javascript">
                     window.alert("email doesn't exist ");
                     window.location="student.html";
                     </script>
                     <%
}
          

}
    catch(Exception e)
{
out.print(e);
}
%>
