<%-- 
    Document   : log.jsp
    Created on : Jun 9, 2018, 10:05:28 PM
    Author     : windows
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import = "java.sql.*"  %>
<%
    String userid=request.getParameter("userid");
    String pass = request.getParameter("pass");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
        Statement st = con.createStatement();
        ResultSet  rs = st.executeQuery("select * from admin where userid = '"+userid+"'and pass = '"+pass+"'" );
        while(rs.next())
        {
            response.sendRedirect("adminhome.jsp");
            session.setAttribute("userid",userid);
        }
            response.sendRedirect("index.html?msg=invalid username  or password");
        
    }
    catch(Exception e)
    {
        out.print(e);
    }
%>