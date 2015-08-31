package org.hibernate.view;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
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
public class NotifySBAction extends ActionSupport {
    
    String title;
    String details;
    String quantity;
    String price;
    String increment;
    String closingdate;
    String currentdate;
    String category;
    int seller;
    int bidder;
    String payble;
        String seller_email = null;
    String bidder_email = null;
    String seller_name = null;
    String bidder_name = null;

    
    public String execute() throws Exception {
        return SUCCESS;
    }
    
    public String sendMail(){
        
    org.hibernate.Session s = HibernateUtil.getSession();
    Criteria crit3 = s.createCriteria(Register.class);
    crit3.add(Restrictions.eq("id", getSeller()));
    List<Register> list3 = crit3.list();
    for (Register register : list3) {
        seller_email = register.getEmail();
        seller_name = register.getName();
    }

    Criteria crit2 = s.createCriteria(Register.class);
    crit2.add(Restrictions.eq("id", getBidder()));
    List<Register> list2 = crit2.list();
    for (Register register : list2) {
        bidder_email = register.getEmail();
        bidder_name = register.getName();
    }
String body = "Dear Customer greetings from gguonlineauction.com your Product =" + getTitle() + ",\n"
            + "Details=" + getDetails() + ",\n"
            + "Quantities=" + getQuantity() + ",\n"
            + "Price=" + getPrice() + ",\n"
            + "Increment=" + getIncrement() + ",\n"
            + "Closing Date=" + getClosingdate() + ",\n"
            +"Registered Date="+getCurrentdate()+",\n"
            +"Category="+getCategory()+",\n"
            +"Payble Amount="+getPayble()+",\n"
            +"Seller name="+seller_name+",\n"
            +"Have a winner"+bidder_name+",\n"
            +"Bidder Pay the payble amount to the seller ASAP\n";

        
        
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
              msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(seller_email, false));
              msg.setRecipient(Message.RecipientType.CC, new InternetAddress(bidder_email,false));
              msg.setSubject("Product Bid Complete Information");
              msg.setText(body);
              // -- Set some other header information --
              msg.setHeader("MyMail", "Mr. Rakesh Chand" );
              msg.setSentDate(new Date());
              // -- Send the message --
              Transport.send(msg);
              
              return SUCCESS;
        }
        
        catch (Exception ex)
        {
            ex.printStackTrace();
          System.out.println("Exception "+ex);
          return INPUT;
        }
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

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getIncrement() {
        return increment;
    }

    public void setIncrement(String increment) {
        this.increment = increment;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getSeller() {
        return seller;
    }

    public void setSeller(int seller) {
        this.seller = seller;
    }

    public int getBidder() {
        return bidder;
    }

    public void setBidder(int bidder) {
        this.bidder = bidder;
    }

    

    public String getPayble() {
        return payble;
    }

    public void setPayble(String payble) {
        this.payble = payble;
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
}