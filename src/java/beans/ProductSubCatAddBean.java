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
public class ProductSubCatAddBean {
    String pcname,pscname;
            int psubcatid;

    public int getPsubcatid() {
        return psubcatid;
    }

    public void setPsubcatid(int psubcatid) {
        this.psubcatid = psubcatid;
    }

   
    public String getPcname() {
        return pcname;
    }

    public void setPcname(String pcname) {
        this.pcname = pcname;
    }

    public String getPscname() {
        return pscname;
    }

    public void setPscname(String pscname) {
        this.pscname = pscname;
    }
    
    
}
