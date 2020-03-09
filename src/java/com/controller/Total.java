/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

public class Total {
    public static void main(String []args){
         try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mist","root","root");
        System.out.println("connection success");
            Statement st1= con.createStatement();
       ResultSet rs1 = st1.executeQuery("select f1.rollno,(f1.sub1+f2.sub1),(f1.sub2+f2.sub2),(f1.sub3+f2.sub3),(f1.sub4+f2.sub4),(f1.sub5+f2.sub5),(f1.sub6+f2.sub6),(f1.lab1+f2.lab1),(f1.lab2+f2.lab2)"+
" from avgdb f1,f13externaldb f2 where f1.rollno=f2.rollno");
          
          while(rs1.next()){ 
               Statement st2= con.createStatement();
          
       String sql="insert into totaldb  values('"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+rs1.getString(3)+"','"+rs1.getString(4)+"','"+rs1.getString(5)+"','"+rs1.getString(6)+"','"+rs1.getString(7)+"','"+rs1.getString(8)+"')";
    int i=st2.executeUpdate(sql);
    if(i>0){
    System.out.println("successfully inserted");
    }
    else{
        System.out.println(" inserted failed");
    }
        
    }//while
        }//try
        catch(Exception e){
            System.out.println(e);
        }      
    }
    }