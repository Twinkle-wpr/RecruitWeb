package com.igeek.shop.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

/**
 * 
 * @ClassName: MailUtils
 * @Description: 发送邮件辅助类 
 * @Company www.igeekhome.com
 */
public class MailUtils {
	/**
	 * 
	 * @Title: sendMail
	 * @Description: 实现发送邮件
	 * @param email：接收邮件的地址
	 * @param emailMsg：发送邮件的内容
	 * @throws AddressException
	 * @throws MessagingException
	 */
	public static void sendMail(String email , String subject, String emailMsg) throws AddressException, MessagingException {
		
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "SMTP");
		props.setProperty("mail.host", "smtp.163.com");
		props.setProperty("mail.smtp.auth", "true");// 指定验证为true

		// 创建验证器
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				//第一个参数：邮箱名   第二个参数：授权码
				return new PasswordAuthentication("dangeradmin", "OLGRXPIOMBFTCMQQ");
			}
		};

		// 1.创建一个程序与邮件服务器会话对象 Session
		Session session = Session.getInstance(props, auth);

		// 2.创建一个Message，它相当于是邮件内容
		Message message = new MimeMessage(session);
		
		// 设置发送者
		message.setFrom(new InternetAddress("dangeradmin@163.com")); 

		// 设置发送方式与接收者
		message.setRecipient(RecipientType.TO, new InternetAddress(email)); 

		// 设置邮件主题
		message.setSubject(subject);
		// 设置邮件内容，也可以从外部指定邮件内容传入
		// message.setText("这是一封激活邮件，请<a href='#'>点击</a>");
		message.setContent(emailMsg, "text/html;charset=utf-8");

		// 3.创建 Transport用于将邮件发送
		Transport.send(message);
	}
}
