package dao;
import beans.AddPostBean;
import connect.ConnectionProvider;
import java.sql.Connection;
import java.sql.PreparedStatement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shravan
 */
public class AddPostDao {
    public String save(AddPostBean bean) {
         
     Connection c = ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("insert into post values(?)");
            
          ps.setString(1, bean.getPosttitle());
           
            
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
