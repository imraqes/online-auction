package org.hibernate.view;

import com.opensymphony.xwork2.ActionSupport;
import jMail.Mail;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.hibernate.Criteria;
import org.hibernate.controller.HibernateUtil;
import org.hibernate.criterion.Restrictions;
import org.hibernate.model.Register;

/**
 *
 * @author Rakesh Chand
 */
public class ForgotpasswordAction extends ActionSupport {

    public String execute() throws Exception {
        return SUCCESS;
    }
    private String email;
    String username = null;
    String password = null;
    
    public String sendMail(){
        
        org.hibernate.Session s = HibernateUtil.getSession();
        Criteria c = s.createCriteria(Register.class);
        c.add(Restrictions.eq("email", email));
        
        List<Register> l = c.list();
        
        if(!l.isEmpty()){
        for (Register register : l) {
            username = register.getUsername();
            password = register.getPassword();
        }
        
        String message = "Dear Customer greetings from gguonlineauction.com your USERNAME and PASSWORD is \n"
                +"USERNAME="+username+"\n"
                +"PASSWORD="+password+"\n"
                +"Thank you for using our website";
        try
        {
         
            Properties props = System.getProperties();
              // -- Attaching to default Session, or we could start a new one --
              props.put("mail.transport.protocol", "smtp" );
              props.put("mail.smtp.starttls.enable","true" );
              props.put("mail.smtp.host","smtp.gmail.com");
              props.put("mail.smtp.auth", "true" );
              props.put("mail.port", "465");
              props.put("mail.user", "r.rulaniya@gmail.com");
              props.put("mail.password", "9983962287");
              Authenticator auth = new SMTPAuthenticator();
              Session session = Session.getInstance(props, auth);
              // -- Create a new message --
              Message msg = new MimeMessage(session);
              // -- Set the FROM and TO fields --
              msg.setFrom(new InternetAddress("r.rulaniya@gmail.com"));
              msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(getEmail(), false));
              msg.setSubject("Account Information");
              msg.setText(message);
              // -- Set some other header information --
              msg.setHeader("MyMail", "Mr. Rakesh Chand" );
              msg.setSentDate(new Date());
              // -- Send the message --
              Transport.send(msg);
              System.out.println("Message sent to"+getEmail()+" OK." );
              return SUCCESS;
        }
        
        catch (Exception ex)
        {
            ex.printStackTrace();
          System.out.println("Exception "+ex);
          return INPUT;
        }
        }else{
            return ERROR;
        }
  }

// Also include an inner class that is used for authentication purposes

public class SMTPAuthenticator extends javax.mail.Authenticator {
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            String username =  "r.rulaniya@gmail.com";           // specify your email id here (sender's email id)
            String password = "9983962287";                                      // specify your password here
            return new PasswordAuthentication(username, password);
        }
  }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}