/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
/**
 *
 * @author shravan
 */
public class Test {
  
   public static void main(String ss[])
   {
   
       try
       {
           Connection c=connect.ConnectionProvider.getCon();
           Statement statement=c.createStatement();
           PreparedStatement ps=c.prepareStatement("update demo set name=? where id=?");
           ps.setString(1,"java");
           ps.setInt(2,1);
           ps.addBatch();
           ps.setString(1,"sunlight");
           ps.setInt(2,2);
           ps.addBatch();
           int count[]=ps.executeBatch();
  

           PreparedStatement ps1=c.prepareStatement("delete from demo where id=?");
           ps1.setInt(1,4);
           ps1.addBatch();
           ps1.setInt(1,5);
           ps1.addBatch();
           
           count=ps1.executeBatch();
           
           
           
           
           
            
           
          // String s1="update demo set name='baba'where id=1";
           //String s2="delete from demo where id=2";
           
           //statement.addBatch(s1);
          // statement.addBatch(s2);
           ps.addBatch();
          
           
           //int i[]=statement.executeBatch();
//           if(i.length==2)
//                     
//               System.out.println("dtate inserteddd...");
//           else
//               System.out.println("dtate Not inserteddd...");
//              
           
       }
       catch(Exception r)
       {
       System.out.println(r);
       }
   }
    
}
