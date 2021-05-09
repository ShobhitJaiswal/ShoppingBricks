/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.ProductCatAddBean;
import connect.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
/**
 *
 * @author shravan
 */
public class ProductCatAddDao {
    
     public String save(ProductCatAddBean bean) {
         
     Connection c = ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("insert into prod_cat (pcname) values(?)");
            
          
            ps.setString(1, bean.getPcname());
            
     
            
            int u = ps.executeUpdate();
            if (u > 0) {
                return "success";
            } else {
                return "fail";
            }
        } catch (Exception ex) {

            ex.printStackTrace();
        }

        return "fail"; 
}
     
}
