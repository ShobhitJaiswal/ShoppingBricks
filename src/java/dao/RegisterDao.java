/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.RegisterBean;
import java.sql.PreparedStatement;
import java.sql.Connection;

/**
 *
 * @author shravan
 */
public class RegisterDao {

    public String save(RegisterBean bean) {
        Connection c = connect.ConnectionProvider.getCon();
        try {
            PreparedStatement ps = c.prepareStatement("insert into users values(?,?,?,?,?,?)");
            ps.setInt(1, bean.getUid());
          
            ps.setString(2, bean.getUname());
            ps.setString(3, bean.getUpass());
            ps.setString(4, bean.getUcpass());
            ps.setString(5, bean.getUemail());
            ps.setString(6, bean.getUphone());
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
