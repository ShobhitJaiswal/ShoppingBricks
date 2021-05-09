package beans;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.ConnectionProvider;

public class ProductSearch  
{
         int pid,pcompid,pprice,pquantity,pcat_id,psubcat_id;
    String pcatname,pscatname,pimage,pname,pcompname,pmodel,editor1,date,posttitle;   

    public String getPosttitle() {
        return posttitle;
    }

    public void setPosttitle(String posttitle) {
        this.posttitle = posttitle;
        
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
        //System.out.println(date);
    }

    public String getEditor1() {
        return editor1;
    }

    public void setEditor1(String editor1) {
        this.editor1 = editor1;
        //System.out.println(editor1);
    }
   
    

   

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
        //System.out.println(pid);
    }

    public int getPcompid() {
        return pcompid;
       
    }

    public void setPcompid(int pcompid) {
        this.pcompid = pcompid;
        //System.out.println(pcompid);
    }

    public int getPprice() {
        return pprice;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
        //System.out.println(pprice);
    }

    public int getPquantity() {
        return pquantity;
    }

    public void setPquantity(int pquantity) {
        this.pquantity = pquantity;
        //System.out.println(pquantity);
    }

    public String getPcatname() {
        return pcatname;
    }

    public void setPcatname(String pcatname) {
        this.pcatname = pcatname;
       //System.out.println(pcatname);
    }

    public String getPscatname() {
        return pscatname;
    }

    public void setPscatname(String pscatname) {
        this.pscatname = pscatname;
        //System.out.println(pscatname);
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
        //System.out.println(pimage);
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
        //System.out.println(pname);
    }

    public String getPcompname() {
        return pcompname;
    }

    public void setPcompname(String pcompname) {
        this.pcompname = pcompname;
        //System.out.println(pcompname);
    }

    public String getPmodel() {
        return pmodel;
    }

    public void setPmodel(String pmodel) {
        this.pmodel = pmodel;
        //System.out.println(pmodel);
    }
 

 public  int getMNameResult(String productName)
{
     int c=0;
     int r=0;
     String msg;
     try{
         Connection con=ConnectionProvider.getCon();
         String sql="select * from product an where pname like'"+productName+"%'";
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery(sql);
         /*if(!rs.next())
         {
            r=-1;
         } */     
         while(rs.next())
{
    pcat_id=rs.getInt("pcat_id");
   psubcat_id=rs.getInt("psubcat_id");
 posttitle=rs.getString("posttitle");
                                                                
                                                                pcatname=rs.getString("pcname");
                                                                pscatname=rs.getString("psubcatname");
                                                               
                                                                pid=rs.getInt("pid");
                                                                pname=rs.getString("pname");
								pcompid=rs.getInt("pcompid");
								pcompname=rs.getString("pcompname");
                                                                pmodel=rs.getString("pmodel");
                                                                pprice=rs.getInt("price");
                                                                pquantity=rs.getInt("pquantity");
                                                               
                                                                date=rs.getString("post_date");
    
    
    
    
    
           

         c=1;
         
         }
            System.out.println(c);
           System.out.println(this.pname);
         //st.close();
         //con.close();
     }
     catch(Exception e){
     e.printStackTrace();}
 return r;
 }


   
}
       
            