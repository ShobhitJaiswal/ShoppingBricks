/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.ProductSubCatAddBean;
import connect.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author shravan
 */
public class ProductSubCatAddDao {
    public String save(ProductSubCatAddBean bean) {
         int pcid=0;
     Connection c = ConnectionProvider.getCon();
        try {
            PreparedStatement ps1=c.prepareStatement("select pcat_id from prod_cat where pcname=?");
                                        ps1.setString(1, bean.getPcname());
                                                     ResultSet rs1=ps1.executeQuery();
                                                 while(rs1.next())
                                                 {
                                                    
                                              pcid=rs1.getInt("pcat_id");      
                                                 } 
            System.out.println(pcid);
            PreparedStatement ps = c.prepareStatement("insert into p_subcat values(?,?,?,?)");
             ps.setInt(1, bean.getPsubcatid()); 
            ps.setInt(2, pcid);
             
            ps.setString(3, bean.getPcname());
          
            ps.setString(4, bean.getPscname());
           
           
            
     
            
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
