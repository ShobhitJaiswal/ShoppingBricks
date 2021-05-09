/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.ProductDeleteBean;
import connect.ConnectionProvider;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author shravan
 */
public class ProductDeleteDao {
    Connection connection=ConnectionProvider.getCon();

    public  String delete(ProductDeleteBean bean) {
        try{
            
            
            int p_id=bean.getPid();


	PreparedStatement preparedStatement=connection.prepareStatement("delete from product where pid='"+p_id+"'");

      
		int i=preparedStatement.executeUpdate();
		if(i>0)
			return "success";
		else
			return "fail"; 
            
            
            
            
        }catch(Exception exception)
        {
        exception.printStackTrace();
        }
        
    
						 			
//                int cat_id=bean.getPcid();
//		//PreparedStatement getpreparedStatement=connection.prepareStatement("select * from product where pcid='"+cat_id+"'");
//		//ResultSet getrs=getpreparedStatement.executeQuery(); 
//		//while(getrs.next())
//		//{
////			System.out.println("C:\\Users\\shravan\\Documents\\NetBeansProjects\\shopcool\\web\\"+getrs.getString("p_image"));
////			File deleteFile = new File("C:\\Users\\shravan\\Documents\\NetBeansProjects\\shopcool\\web\\"+getrs.getString("p_image"));
////			// check if the file  present or not
////			if(deleteFile.exists() )
////			{
////			  deleteFile.delete() ;
//			  PreparedStatement preparedStatement=connection.prepareStatement("delete from product where pcid='"+cat_id+"'");
//                          int i=preparedStatement.executeUpdate();
//                            if(i>0)
//                                    return "success";
//                            else
//                                    return "fail";
//                  //      }
////                else
////                            {
////                                return "fail";
////                            }
//                }
//			
//	}catch(Exception exception)
//                {
//		exception.printStackTrace();
//		}
  return "fail";
    }
    
}
    