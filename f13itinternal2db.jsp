<%-- 
    Document   : register
    Created on : Jun 8, 2018, 3:41:23 PM
    Author     : windows
--%>
<!DOCTYPE html>
<%@page contentType = "text/html" pageEncoding = "UTF-8"%>

<%@page import = "java.sql.*"   %>

<%
   
        String  srno[] =request.getParameterValues("srno");
         String  rollno[] =request.getParameterValues("rollno");
          String  sub1 []=request.getParameterValues("sub1");
           String  sub2[] =request.getParameterValues("sub2");
          String  sub3[] =request.getParameterValues("sub3");
           String  sub4[] =request.getParameterValues("sub4");
            String  sub5[]=request.getParameterValues("sub5");
             String  sub6[]=request.getParameterValues("sub6");
              String  lab1[] =request.getParameterValues("lab1");
               String  lab2[] =request.getParameterValues("lab2");
               
    try{
                
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
          
          for(int i=0;i<srno.length;i++){
              
              
              String sql = "insert into f13internal2_db values('"+srno[i]+"','"+rollno[i]+"','"+sub1[i]+"','"+sub2[i]+"','"+sub3[i]+"','"+sub4[i]+"','"+sub5[i]+"','"+sub6[i]+"','"+lab1[i]+"','"+lab2[i]+"')";
        
         Statement st=con.createStatement();
          int k=st.executeUpdate(sql);
         
      
        
        
          if(k>0)
          System.out.println("inserted successfully======"+k);
          else{
               System.out.println("inserted failed======"+k);
          }
          }
          
//         
    %> ResultSet rs = st.executeQuery("select  count(*) from internalmarks where rollno ='"+rollno+"'");
//          while(rs.next()){ 
//          int count=rs.getInt(1);
//          if(count<2) 
//          {
//              
//    int i=st.executeUpdate(sql);
//    if(i==0){
//    response.sendRedirect("index.html?msg=marks failed entry");
//    }
//    else{
//        
//        response.sendRedirect("index.html?msg=marks entered sucessfull");
//    }
//    }
//    else{
    <script type="text/javascript" >
        window.alert(" marks are entered ");
        window.location="marks.jsp";
    </script>
    <%
      //  }//if
//}//while
     }//try
    catch(Exception e){
    out.print(e);
    }
 %>
