/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java.dao;

/**
 *
 * @author shravan
 */
import beans.ProductAddBean;

import com.oreilly.servlet.MultipartRequest;
import java.text.SimpleDateFormat;
import java.sql.PreparedStatement;
import java.sql.Connection;
import connect.ConnectionProvider;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
public class ProductAddDao { 
    Connection connection=ConnectionProvider.getCon();
    public  String save(ProductAddBean bean) {
           int pcid=0,pscid=0;
           
	try{
PreparedStatement ps1=connection.prepareStatement("select pcat_id,psubcat_id from p_subcat where pcname=? and psubcatname=?");
                                        ps1.setString(1, bean.getPcatname());
                                        ps1.setString(2, bean.getPscatname());
                                                     ResultSet rs1=ps1.executeQuery();
                                                 while(rs1.next())
                                                 {
                                                    
                                              pcid=rs1.getInt("pcat_id"); 
                                              pscid=rs1.getInt("psubcat_id"); 
                                              
                                                 } 
 
						 			

	PreparedStatement preparedStatement=connection.prepareStatement("insert into product values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	 preparedStatement.setInt(1,pcid);
          preparedStatement.setInt(2,pscid);
        preparedStatement.setString(3,bean.getPosttitle());
        preparedStatement.setInt(4,bean.getPid());
         preparedStatement.setString(5,bean.getPname());
         preparedStatement.setInt(6,bean.getPcompid());
         preparedStatement.setString(7,bean.getPcompname());
       
        preparedStatement.setString(8,bean.getPcatname());
        
        
        preparedStatement.setString(9,bean.getPscatname());
        preparedStatement.setString(10,bean.getPimage());
        preparedStatement.setString(11,bean.getEditor1());
	preparedStatement.setInt(12,bean.getPprice());
	preparedStatement.setInt(13,bean.getPquantity());
	        
        preparedStatement.setString(14,bean.getPmodel());
        preparedStatement.setString(15,bean.getDate());
        
                		
		
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
