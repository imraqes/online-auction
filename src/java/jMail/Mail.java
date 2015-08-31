/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jMail;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

/**
 *
 * @author Administrator
 */

public class Mail {
    private String to;
private String from;
private String message;
private String subject;
private String smtpServ;
private String email;
private String username;

    /**
     * @return the to
     */
    public String getTo() {
        return to;
    }

    /**
     * @param to the to to set
     */
    public void setTo(String to) {
        this.to = to;
    }

    /**
     * @return the from
     */
    public String getFrom() {
        return from;
    }

    /**
     * @param from the from to set
     */
    public void setFrom(String from) {
        this.from = from;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the smtpServ
     */
    public String getSmtpServ() {
        return smtpServ;
    }

    /**
     * @param smtpServ the smtpServ to set
     */
    public void setSmtpServ(String smtpServ) {
        this.smtpServ = smtpServ;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    
    
    
    
    
    public int sendMail(){
        try
        {
         
            Properties props = System.getProperties();
              // -- Attaching to default Session, or we could start a new one --
              props.put("mail.transport.protocol", "smtp" );
              props.put("mail.smtp.starttls.enable","true" );
              props.put("mail.smtp.host",smtpServ);
              props.put("mail.smtp.auth", "true" );
              props.put("mail.port", "465");
              props.put("mail.user", from);
              props.put("mail.password", "9983962287");
              Authenticator auth = new SMTPAuthenticator();
              Session session = Session.getInstance(props, auth);
              // -- Create a new message --
              Message msg = new MimeMessage(session);
              // -- Set the FROM and TO fields --
              msg.setFrom(new InternetAddress(from));
              msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
              msg.setSubject(subject);
              msg.setText(message+"\n by username = \n "+username+"\n EMAIL:  \n"+email);
              // -- Set some other header information --
              msg.setHeader("MyMail", "Mr. Rakesh Chand" );
              msg.setSentDate(new Date());
              // -- Send the message --
              Transport.send(msg);
              System.out.println("Message sent to"+to+" OK." );
              return 0;
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
          System.out.println("Exception "+ex);
          return -1;
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
    
}
