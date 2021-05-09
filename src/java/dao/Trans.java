/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shravan
 */
public class Trans {
 static Connection c=null;
    public static void main(String ss[])
   {
        try
       {
           c=connect.ConnectionProvider.getCon();
           Statement statement=c.createStatement();
           c.setAutoCommit(false);
          PreparedStatement ps=c.prepareStatement("update demo set amout=amout+? where id=?");
          PreparedStatement ps1=c.prepareStatement("update demo set amout=amout-? where id=?");
           Scanner scanner=new Scanner(System.in);
           System.out.println("Eneter From Id");
           int fid=scanner.nextInt();
           System.out.println("Eneter From Amout");
           int famt=scanner.nextInt();
              
           System.out.println("Eneter To Id");
           int tid=scanner.nextInt();
           System.out.println("Eneter To Amout");
           int tamt=scanner.nextInt();
       
           PreparedStatement check=c.prepareStatement("select amout  from demo where id=?");
           check.setInt(1,fid);
           ResultSet rs=check.executeQuery();
           int amout=0;
           if(rs.next()) 
           {
           amout=rs.getInt("amout");     
           }
            if(amout<famt)
                System.out.println("U do not have paisa zadaaa....");
             else
            {
            
              ps.setInt(1,tamt);
              ps.setInt(2,tid);
              ps.executeUpdate();
              //int i=10/0;
              ps1.setInt(1,famt);
              ps1.setInt(2,fid);
              ps1.executeUpdate();

   
                
            }
           
           

       }
       catch(Exception e)
       {
            try {
                c.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(Trans.class.getName()).log(Level.SEVERE, null, ex);
            }
           e.printStackTrace();
       }
     try {
         c.commit();
     } catch (SQLException ex) {
         Logger.getLogger(Trans.class.getName()).log(Level.SEVERE, null, ex);
     }
   }


}
