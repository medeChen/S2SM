package com.chen.utils;

import java.security.Security;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.net.ssl.internal.ssl.Provider;

/**
 * @author chen
 *
 *         2017年8月22日
 */
public class Send {
	private static MimeMessage message;
	@SuppressWarnings("static-access")
	public static void sendmail(String to,String msg) throws MessagingException {
		Security.addProvider(new Provider());
		final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		// QQ邮箱服务器
		String smtpHost = "smtp.qq.com";
		// 邮箱用户名，即QQ账号
		final String username = "1312477872";
		// 邮箱授权码
		final String password = "eudbsrdetrizigbb";
		// 自己的邮箱
		String from = "easonbukeng@qq.com";
		Transport transport;
		Properties props = new Properties();
		props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");
		props.setProperty("mail.smtp.auth", "true");
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.username", username);
		props.put("mail.smtp.password", password);
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			// 身份认证
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		InternetAddress[] addresses = { new InternetAddress(to) };
		message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO, addresses);
		message.setSubject("你的验证码");
		message.setSentDate(new Date());
		message.setText(msg);
		transport = session.getTransport("smtp");
		transport.connect(smtpHost, username, password);
		// 创建附件部分
//		String filename = "c:\\output\\output.txt";
//		DataSource source = new FileDataSource(filename);
//		message.setDataHandler(new DataHandler(source));
//		message.setFileName(filename);
		transport.send(message);
		System.out.println("email has been sent");
	}
}
