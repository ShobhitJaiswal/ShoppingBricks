/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.LoginBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author shravan
 */
public class AdminLoginDao {
    public String save(LoginBean bean) {
        Connection c = connect.ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("select * from users where username=? and password=?");
           
          
            ps.setString(1, bean.getUname());
            ps.setString(2, bean.getUpass());
            
            ResultSet rs= ps.executeQuery();
            
            if(rs.next()) 
		{
                    return "success";
		}
		else
		{
				return "fail";
		}
            
        } catch (Exception ex) {

            ex.printStackTrace();
        }

        return "fail";

    }
    
}
