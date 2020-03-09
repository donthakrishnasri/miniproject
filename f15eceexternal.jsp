<html>
   
    <head>
         <title>table
        </title>
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
        <body bgcolor="grey">
            <h2 align="center">Enter Your  external Marks</h2>
            <form action="f15eceexternaldb.jsp">
            <table align="center" border="1">
                <%
                   int s=Integer.parseInt(request.getParameter("cst"));
                    %>
                <tr><th>SRNo</th><th>RollNo</th><th>Sub1</th><th>Sub2</th><th>Sub3</th><th>Sub4</th><th>Sub5</th><th>Sub6</th>
                <th>Lab1</th><th>Lab2</th></tr>
                <% for(int i=0;i<s;i++){%>
                <tr><td><input  type="text" name="srno"></td>
                <td><input type="text" name="rollno"></td>
                <td><input type="text" name="sub1"></td>
                <td><input type="text" name="sub2"></td>
                <td><input type="text" name="sub3"></td>
                <td><input type="text" name="sub4"></td>
                <td><input type="text" name="sub5"></td>
                <td><input type="text" name="sub6"></td>
                <td><input type="text" name="lab1"></td>
                <td><input type="text" name="lab2"></td></tr>
                      <%  }%>
                <tr><td><input type="submit" value="submit"></td></tr>
                
                
 
            </table>
        </form>

   



        </body>
</html>
