<%-- 
    Document   : register
    Created on : Jun 8, 2018, 3:41:23 PM
    Author     : windows
--%>
<!DOCTYPE html>
<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<%@page  import="com.controller.Total" %>
<%@page import = "java.sql.*"   %>

<%
    
               // Total t =new Total();
               
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
                Connection con=null;
    try{
                
          Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
          
          for(int i=0;i<srno.length;i++){
              
              
              String sql = "insert into f15itexternaldb values('"+srno[i]+"','"+rollno[i]+"','"+sub1[i]+"','"+sub2[i]+"','"+sub3[i]+"','"+sub4[i]+"','"+sub5[i]+"','"+sub6[i]+"','"+lab1[i]+"','"+lab2[i]+"')";
         Statement st=con.createStatement();
          int k=st.executeUpdate(sql);
         
    
          if(k>0)
          System.out.println("inserted successfully======"+k);
          else{
               System.out.println("inserted failed======"+k);
             }
          }
//         
    %> 

//    else{
    <script type="text/javascript" >
        window.alert(" marks are entered ");
        window.location="marks.jsp";
    </script>
    <%
        //}
      //  }//if
//}//while
     }//try
    catch(Exception e){
    out.print(e);
    }
//avg db
try{
Statement st1= con.createStatement();
       ResultSet rs1 = st1.executeQuery("select f1.rollno, round((f1.sub1+f2.sub1)/2),round((f1.sub2+f2.sub2)/2),round((f1.sub3+f2.sub3)/2),round((f1.sub4+f2.sub4)/2),round((f1.sub5+f2.sub5)/2),round((f1.sub6+f2.sub6)/2),round((f1.lab1+f2.lab1)/2),round((f1.lab2+f2.lab2)/2)\n"+
" from f15itinternal1_db f1,f15itinternal2_db f2 where f1.rollno=f2.rollno");
          
          while(rs1.next()){ 
               Statement st2= con.createStatement();
         
       String sql="insert into f15itavgdb  values('"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+rs1.getString(3)+"','"+rs1.getString(4)+"','"+rs1.getString(5)+"','"+rs1.getString(6)+"','"+rs1.getString(7)+"','"+rs1.getString(8)+"','"+rs1.getString(9)+"')";
    int i=st2.executeUpdate(sql);
    if(i>0){
    System.out.println("successfully inserted");
    }
    else{
        System.out.println(" inserted failed");
    }
}

try{
Statement st2= con.createStatement();
       ResultSet rs2 = st2.executeQuery("select f1.rollno,(f1.sub1+f2.sub1),(f1.sub2+f2.sub2),(f1.sub3+f2.sub3),(f1.sub4+f2.sub4),(f1.sub5+f2.sub5),(f1.sub6+f2.sub6),(f1.lab1+f2.lab1),(f1.lab2+f2.lab2),(f1.sub1+f2.sub1+f1.sub2+f2.sub2+f1.sub3+f2.sub3+f1.sub4+f2.sub4+f1.sub5+f2.sub5+f1.sub6+f2.sub6+f1.lab1+f2.lab1+f1.lab2+f2.lab2),((f1.sub1+f2.sub1+f1.sub2+f2.sub2+f1.sub3+f2.sub3+f1.sub4+f2.sub4+f1.sub5+f2.sub5+f1.sub6+f2.sub6+f1.lab1+f2.lab1+f1.lab2+f2.lab2)/750*100)\n"+
" from f15itavgdb f1,f15itexternaldb f2 where f1.rollno=f2.rollno");
          
          while(rs2.next()){ 
               Statement st3= con.createStatement();
         
       String sql1="insert into f15ittotaldb  values('"+rs2.getString(1)+"','"+rs2.getString(2)+"','"+rs2.getString(3)+"','"+rs2.getString(4)+"','"+rs2.getString(5)+"','"+rs2.getString(6)+"','"+rs2.getString(7)+"','"+rs2.getString(8)+"','"+rs2.getString(9)+"','"+rs2.getString(10)+"','"+rs2.getString(11)+"')";
    int j=st3.executeUpdate(sql1);
    if(j>0){
    System.out.println("successfully inserted");
    }
    else{
        System.out.println(" inserted failed");
    }
}
}catch(Exception e){
e.printStackTrace();
}



}catch(Exception e){
e.printStackTrace();
}

 %>
