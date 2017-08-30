package com.ctoangels.goshipsurvey.common.util;

import com.ctoangels.goshipsurvey.common.modules.prepurchase.entity.EmailQuotation;
import com.ctoangels.goshipsurvey.common.modules.sys.entity.MailAuthenticator;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.Security;
import java.util.*;

/**
 * Created by lenovo on 2017/3/20.
 */
public class MailUtil {

    private static String sitePath;

    private static String fromAddress;

    private static String fromPassword;

    private static String mailSmtpHost;

    private static String mailSmtpPort;

    private static String effectiveTime;

    static {
        Properties prop = new Properties();
        InputStream in = MailUtil.class.getResourceAsStream("/override.properties");
        try {
            prop.load(in);
            sitePath = prop.getProperty("site_path");
            fromAddress = prop.getProperty("fromAddress");
            fromPassword = prop.getProperty("fromPassword");
            mailSmtpHost = prop.getProperty("mail.smtp.host");
            mailSmtpPort = prop.getProperty("mail.smtp.port");
            effectiveTime = prop.getProperty("effectiveTime");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    //发送邮件 1.收件人 2.信息 3.标题 4.附件
    public static void sendEmail(String toAddress, String text, String subject, Multipart multipart) {
        Properties props = new Properties();
        Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        props.put("mail.smtp.host", mailSmtpHost); //smtp服务器地址
        props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.smtp.port", mailSmtpPort);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.auth", true);  //是否需要认证
        MailAuthenticator myauth = new MailAuthenticator(fromAddress, fromPassword);
        //获得一个带有authenticator的session实例
        javax.mail.Session session = javax.mail.Session.getInstance(props, myauth);
        session.setDebug(true);//打开debug模式，会打印发送细节到console
        Message message = new MimeMessage(session); //实例化一个MimeMessage集成自abstract Message 。参数为session
        try {
            message.setFrom(new InternetAddress(fromAddress)); //设置发出方,使用setXXX设置单用户，使用addXXX添加InternetAddress[]
            if (text != null) {
                message.setContent(text, "text/html;charset=utf-8"); //设置文本内容 单一文本使用setText,Multipart复杂对象使用setContent
            }
            if (multipart != null) {
                message.setContent(multipart);
            }
            message.setSubject(subject); //设置标题
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toAddress)); //设置接收方
            Transport.send(message); //使用Transport静态方法发送邮件
        } catch (AddressException e) {
            //此处处理AddressException异常  [The exception thrown when a wrongly formatted address is encountered.]
            e.printStackTrace();
        } catch (MessagingException e) {
            //此处处理MessagingException异常 [The base class for all exceptions thrown by the Messaging classes ]
            e.printStackTrace();
        }
    }

    //发送邮件 1.收件人 2.信息 3.标题 4.附件
    public static void sendEmail(String[] toAddress, String text, String subject, Multipart multipart) {
        Properties props = new Properties();
        Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        props.put("mail.smtp.host", mailSmtpHost); //smtp服务器地址
        props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.smtp.port", mailSmtpPort);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.auth", true);  //是否需要认证

        MailAuthenticator myauth = new MailAuthenticator(fromAddress, fromPassword);
        //获得一个带有authenticator的session实例
        javax.mail.Session session = javax.mail.Session.getInstance(props, myauth);
        session.setDebug(true);//打开debug模式，会打印发送细节到console
        Message message = new MimeMessage(session); //实例化一个MimeMessage集成自abstract Message 。参数为session
        try {
            message.setFrom(new InternetAddress(fromAddress)); //设置发出方,使用setXXX设置单用户，使用addXXX添加InternetAddress[]
            if (text != null) {
                message.setContent(text, "text/html;charset=utf-8"); //设置文本内容 单一文本使用setText,Multipart复杂对象使用setContent
            }
            if (multipart != null) {
                message.setContent(multipart);
            }
            message.setSubject(subject); //设置标题
            InternetAddress[] addresses = new InternetAddress[toAddress.length];
            for (int i = 0; i < toAddress.length; i++) {
                addresses[i] = new InternetAddress(toAddress[i]);
            }
            message.addRecipients(Message.RecipientType.TO, addresses);
            Transport.send(message); //使用Transport静态方法发送邮件
        } catch (AddressException e) {
            //此处处理AddressException异常  [The exception thrown when a wrongly formatted address is encountered.]
        } catch (MessagingException e) {
            //此处处理MessagingException异常 [The base class for all exceptions thrown by the Messaging classes ]
        }
    }


    public static void sendEmailQuotation(EmailQuotation emailQuotation) {
        StringBuilder sb = new StringBuilder();
        sb.append("Ship name : " + emailQuotation.getShipName() + "<br>");
        sb.append("Imo : " + emailQuotation.getImo() + "<br>");
        sb.append("Inspection type : " + emailQuotation.getInspectionType() + "<br>");
        sb.append("Port : " + emailQuotation.getPort() + "<br>");
        sb.append("Date range : " + DateUtil.formatDate(emailQuotation.getStartDate(), "yyyy-MM-dd") + "~" + DateUtil.formatDate(emailQuotation.getEndDate(), "yyyy-MM-dd") + "<br>");
        sb.append("Email : " + emailQuotation.getEmail() + "<br>");
        sb.append("Special requirement :<br> <label style='white-space: pre-wrap;word-wrap: break-word; '> " + emailQuotation.getSpecialRequirement() + "</label>><br>");
        sendEmail(fromAddress, sb.toString(), "有船船要进行检验", null);
    }

    //发送注册时的验证邮件
    public static void sendActivateEmail(String toAddress, String validateCode) {
        StringBuffer sb = new StringBuffer();
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>");
        sb.append("<title>Daily Report</title>");


        sb.append("<style>");
        sb.append(" a:hover img {  -webkit-transform: scale(1.5, 1.5);  -moz-transform: scale(1.5, 1.5);  -transform: scale(1.5, 1.5);  }");
        sb.append("</style>");

        sb.append("</head>");
        sb.append("<body>");
        sb.append("点击下面链接激活账号，" + effectiveTime + "分钟生效，否则重新注册账号，链接只能使用一次，请尽快激活!");
        sb.append("<br>");
        String href = sitePath + "/register/activate?action=activate&email=" + toAddress + "&validateCode=" + validateCode;
//        sb.append(sitePath + "/register/activate?action=activate&email=");
//        sb.append(toAddress);
//        sb.append("&validateCode=");
//        sb.append(validateCode);
        sb.append("<a href='" + href + "'>" + "点击进行激活" + "</a>");

        sb.append("<br>=================================<br>");
        String imgPath = "https://zhstatic.zhihu.com/eDM/roundtable/chunjiyundong.jpg";

        sb.append("<a href='" + imgPath + "'>");
        sb.append("<img id='img1' src='" + imgPath + "' />");
        sb.append("</a>");

        sb.append("</body>");
        sb.append("</html>");

        MailUtil.sendEmail(toAddress, sb.toString(), "欢迎注册", null);
    }

    //发送更改邮箱时的验证邮件
    public static void sendChangeEmailCode(String toAddress, HttpSession session) {
        StringBuffer sb = new StringBuffer();
        String base = "0123456789";
        Random random = new Random();
        StringBuilder code = new StringBuilder();
        for (int i = 0; i < 6; ++i) {
            int number = random.nextInt(base.length());
            code.append(base.charAt(number));
        }
        session.setAttribute("sessionChangeEmail", toAddress);
        session.setAttribute("sessionChangeEmailCode", code.toString());
        sb.append("请尽快使用下面的验证码进行验证");
        sb.append(code.toString());
        MailUtil.sendEmail(toAddress, sb.toString(), "更换邮箱", null);
    }

    //发送询价邮件
    public static void sendEnquiryEmail(String toAddress, String text, List<File> files) {
        Multipart multipart = new MimeMultipart();
        //实例化一个bodypart用于封装内容
        BodyPart bodyPart = new MimeBodyPart();
        try {
            bodyPart.setContent(text, "text/html;charset=utf8");
            multipart.addBodyPart(bodyPart);
            //每一个部分实例化一个bodypart，故每个附件也需要实例化一个bodypart
            for (File file : files) {
                bodyPart = new MimeBodyPart();
                //实例化DataSource(来自jaf)，参数为文件的地址
                DataSource dataSource = new FileDataSource(file.getAbsolutePath());
                //使用datasource实例化datahandler
                DataHandler dataHandler = new DataHandler(dataSource);
                bodyPart.setDataHandler(dataHandler);
                //设置附件标题，使用MimeUtility进行名字转码，否则接收到的是乱码
                try {
                    bodyPart.setFileName(javax.mail.internet.MimeUtility.encodeText(file.getName()));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                //添加bodypart到multipart
                multipart.addBodyPart(bodyPart);
            }

        } catch (MessagingException e) {
            e.printStackTrace();
        }
        MailUtil.sendEmail(toAddress, text, "附件", multipart);
        for (File file : files) {
            file.delete();
        }
    }

}
