package org.hibernate.view;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.model.Adpost;
import org.hibernate.controller.HibernateUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Criteria;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.model.Category;
import org.hibernate.model.Register;

public class AdpostAction extends ActionSupport implements ServletRequestAware {

    Adpost adpost = new Adpost();
    HttpServletRequest req;
    private String title;
    private String details;
    private String quantity;
    private int price;
    private int increment;
    private String image;
    private String closingdate;
    private String currentdate;
    private String category;
    private int user_id;
    private int cat_id;
    private String username;
    File AdpostPic;
    String AdpostPicContentType;
    String AdpostPicFileName;
    
    public String execute() throws IOException {
        return SUCCESS;
    }
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
   
    String p = Integer.toString(price);
    //Date d = new Date(getClosingdate());
      //              Date now = new Date();

   /* 
    public void validate(){
     
     if(closingdate==null || closingdate.trim().equals("") || d.after(now))
     {
         addFieldError("closingdate","closingdate is required");
         
     }
     
    }
    */
    
    public String Add() throws IOException {
        String path = req.getServletContext().getRealPath(File.separator) + "ProductPics";
        File nf = new File(path, AdpostPicFileName);
        FileUtils.copyFile(AdpostPic, nf);

        Session session = HibernateUtil.getSession();
        session.beginTransaction();

        adpost.setClosingdate(getClosingdate());
        adpost.setTitle(getTitle());
        adpost.setDetails(getDetails());
        adpost.setImage(getImage());
        adpost.setPrice(getPrice());
        adpost.setQuantity(getQuantity());
        adpost.setImage(getAdpostPicFileName());
        adpost.setIncrement(getPrice() / 10);
        adpost.setCurrentdate(dateFormat.format(date));
        adpost.setCategory(getCategory());
        adpost.setEnable(1);

        Criteria crit = session.createCriteria(Register.class);
        crit.add(Restrictions.eq("username", getUsername()));
        List<Register> list = crit.list();
        for (Register register : list) {
            user_id = register.getId();
        }
        adpost.setUser_id(user_id);

        Criteria cr = session.createCriteria(Category.class);
        cr.add(Restrictions.eq("cat", getCategory()));
        List<Category> lt = cr.list();
        for (Category caty : lt) {
            cat_id = caty.getId();
        }
        adpost.setCat_id(cat_id);

        session.save(adpost);
        session.getTransaction().commit();
        return SUCCESS;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        req = hsr;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getClosingdate() {
        return closingdate;
    }

    public void setClosingdate(String closingdate) {
        this.closingdate = closingdate;
    }

    public String getCurrentdate() {
        return currentdate;
    }

    public void setCurrentdate(String currentdate) {
        this.currentdate = currentdate;
    }

    public File getAdpostPic() {
        return AdpostPic;
    }

    public void setAdpostPic(File AdpostPic) {
        this.AdpostPic = AdpostPic;
    }

    public String getAdpostPicContentType() {
        return AdpostPicContentType;
    }

    public void setAdpostPicContentType(String AdpostPicContentType) {
        this.AdpostPicContentType = AdpostPicContentType;
    }

    public String getAdpostPicFileName() {
        return AdpostPicFileName;
    }

    public void setAdpostPicFileName(String AdpostPicFileName) {
        this.AdpostPicFileName = AdpostPicFileName;
    }

    public int getIncrement() {
        return increment;
    }

    public void setIncrement(int increment) {
        this.increment = increment;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    
    
}