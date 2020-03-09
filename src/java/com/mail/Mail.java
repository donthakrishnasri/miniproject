
package com.mail;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Session;

public class Mail {
    public static boolean secretMail(String msg,String userid,String to)
    {
        Properties props=new Properties();
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port","465");
         props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
          props.put("mail.smtp.auth","true");
               props.put("mail.smtp.port","465");
               
               Session session =Session.getDefaultInstance(props,new javax.mail.Authenticator() {
                   @Override
                   protected PasswordAuthentication  getPasswordAuthentication()
                   {
                           return new PasswordAuthentication("mistminiproject@gmail.com","miniproject");
                   }
               });
        System.out.println("Message" +msg);
        try
        {
            Message message=new MimeMessage(session);
            message.setFrom(new InternetAddress(userid));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
            message.setSubject("otp");
            message.setText(msg);
            Transport.send(message);
            System.out.println("Done");
            return true;
        }
            catch(MessagingException e)
              {
                  System.out.println(e);
                  return false;
                //throw new RuntimeException(e);
                     }//catch
              
        
    }//secret mail
}
