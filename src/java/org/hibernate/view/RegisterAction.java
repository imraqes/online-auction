package org.hibernate.view;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.controller.HibernateUtil;
import org.hibernate.criterion.Restrictions;
import org.hibernate.model.Register;

public class RegisterAction extends ActionSupport implements ServletRequestAware {

    private String username;
    private String password;
    private String name;
    private String email;
    private String contactno;
    private String occupation;
    private String address;
    private String image;
    HttpServletRequest req;
    File UserPic;
    String UserPicContentType;
    String UserPicFileName;
    Register register = new Register();

    public String execute() throws Exception {
        return SUCCESS;
    }

    public String register() throws IOException {
        String path = req.getServletContext().getRealPath(File.separator) + "UserPics";
        File nf = new File(path, UserPicFileName);
        FileUtils.copyFile(UserPic, nf);

        Session session = HibernateUtil.getSession();

        Criteria crit3 = session.createCriteria(Register.class);
        crit3.add(Restrictions.eq("email", getEmail()));
        List<Register> list3 = crit3.list();
        
        Criteria crit2 = session.createCriteria(Register.class);
        crit2.add(Restrictions.eq("username", getUsername()));
        List<Register> list2 = crit2.list();
        
        if(list3.isEmpty() && list2.isEmpty()){

        session.beginTransaction();
        register.setAddress(getAddress());
        register.setContactno(getContactno());
        register.setEmail(getEmail());
        register.setName(getName());
        register.setOccupation(getOccupation());
        register.setPassword(getPassword());
        register.setUsername(getUsername());
        register.setImage(getUserPicFileName());
        session.save(register);
        session.getTransaction().commit();
        return SUCCESS;
       
        }
        else{
            return ERROR;
        }
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactno() {
        return contactno;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setServletRequest(HttpServletRequest hsr) {
        req = hsr;
    }

    public File getUserPic() {
        return UserPic;
    }

    public void setUserPic(File UserPic) {
        this.UserPic = UserPic;
    }

    public String getUserPicContentType() {
        return UserPicContentType;
    }

    public void setUserPicContentType(String UserPicContentType) {
        this.UserPicContentType = UserPicContentType;
    }

    public String getUserPicFileName() {
        return UserPicFileName;
    }

    public void setUserPicFileName(String UserPicFileName) {
        this.UserPicFileName = UserPicFileName;
    }
}