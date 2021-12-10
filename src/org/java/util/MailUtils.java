package org.java.util;

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
* @ClassName: MailUtils  
* @Description: 发送邮件辅助类
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
	public static void sendMail(String email, String emailMsg)
			throws AddressException, MessagingException {
		// 1.创建一个程序与邮件服务器会话对象 Session
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "SMTP");
		props.setProperty("mail.host", "smtp.qq.com");
		props.setProperty("mail.smtp.auth", "true");// 指定验证为true

		// 创建验证器
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				//第一个参数是邮箱服务器地址（注册的账号如果账号为igeekhome@126.com,那么为igeekhome）
				//第二个参数是授权码，不是登录的密码
				return new PasswordAuthentication("903987876", "andqwepdraqvbefb");//授权码
			}
		};
		Session session = Session.getInstance(props, auth);

		// 2.创建一个Message，它相当于是邮件内容
		Message message = new MimeMessage(session);

		message.setFrom(new InternetAddress("903987876@qq.com")); // 设置发送者

		message.setRecipient(RecipientType.TO, new InternetAddress(email)); // 设置发送方式与接收者
		message.setSubject("用户激活");
		message.setContent(emailMsg, "text/html;charset=utf-8");//设置内容

		// 3.创建 Transport用于将邮件发送
		Transport.send(message);
	}
}
