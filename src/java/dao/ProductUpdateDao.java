/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.ProductAddBean;
import beans.ProductUpdateBean;
import connect.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author shravan
 */
public class ProductUpdateDao {
    Connection connection=ConnectionProvider.getCon();
    public  String update(ProductUpdateBean bean) {
           
	try{
        
   
    
    int p_id=bean.getPid();


	PreparedStatement preparedStatement=connection.prepareStatement("update product set posttitle=?,pid=?,pname=?,pcompid=?,pcompname=?,pdescription=?,price=?,pquantity=?,pmodel=? where pid='"+p_id+"'");

       preparedStatement.setString(1,bean.getPosttitle());
        preparedStatement.setInt(2,bean.getPid());
         preparedStatement.setString(3,bean.getPname());
         preparedStatement.setInt(4,bean.getPcompid());
         preparedStatement.setString(5,bean.getPcompname());
     
        preparedStatement.setString(6,bean.getEditor1());
	preparedStatement.setInt(7,bean.getPprice());
	preparedStatement.setInt(8,bean.getPquantity());
	        
        preparedStatement.setString(9,bean.getPmodel());
      		
		int i=preparedStatement.executeUpdate();
		if(i>0)
			return "success";
		else
			return "fail";
		}catch(Exception exception)
                {
		exception.printStackTrace();
		}
    	
		return "fail";
        }
    
}
   