/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.AddUserBean;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author shravan
 */
public class AddUserDao {
    public String save(AddUserBean bean) {
        Connection c = connect.ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("insert into ad_user values(?,?,?)");
            ps.setString(1, bean.getAname());
          
            ps.setString(2, bean.getAemail());
            ps.setString(3, bean.getDate());
           
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
