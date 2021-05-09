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
public class ProductUpdateBean {
    int pid,pcompid,pprice,pquantity;
     String pname,pcompname,pmodel,editor1,posttitle;

   
  

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
        System.out.println("c:"+pid);
    }

    public int getPcompid() {
        return pcompid;
    }

    public void setPcompid(int pcompid) {
        this.pcompid = pcompid;
        System.out.println("c:"+pcompid);
    }

    public int getPprice() {
        return pprice;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
        System.out.println("d:"+pprice);
    }

    public int getPquantity() {
        return pquantity;
    }

    public void setPquantity(int pquantity) {
        this.pquantity = pquantity;
        System.out.println("e:"+pquantity);
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
        System.out.println("f:"+pname);
    }

    public String getPcompname() {
        return pcompname;
    }

    public void setPcompname(String pcompname) {
        this.pcompname = pcompname;
        System.out.println("g:"+pcompname);
    }

    public String getPmodel() {
        return pmodel;
    }

    public void setPmodel(String pmodel) {
        this.pmodel = pmodel;
        System.out.println("h:"+pmodel);
    }

    public String getEditor1() {
        return editor1;
    }

    public void setEditor1(String editor1) {
        this.editor1 = editor1;
        System.out.println("i:"+editor1);
    }

    public String getPosttitle() {
        return posttitle;
        
    }

    public void setPosttitle(String posttitle) {
        this.posttitle = posttitle;
        System.out.println("j:"+posttitle);
    }
    
}
