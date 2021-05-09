/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author shravan
 */
public class ProductAddBean {
    int pid,pcompid,pprice,pquantity;
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

    
    
}
