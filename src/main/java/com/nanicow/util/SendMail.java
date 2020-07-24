package com.nanicow.util;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import com.nanicow.domain.ProductVO;
import com.nanicow.domain.UsersVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class SendMail {

	@Autowired
	private JavaMailSenderImpl mailSender;

	public String MailSendMethod(UsersVO mvo, ProductVO pvo) {
		final MimeMessagePreparator preparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom("althsuwpfl@gmail.com");
				helper.setTo(mvo.getEmail());

				helper.setSubject(mvo.getF_name() + "" + mvo.getL_name() + " 様の会員登録を歓迎いたします。");
				String body = new StringBuffer().append("<html>").append("<body>").append("<h2>おはようございます。</h2>")
						.append("<p>メール認証でございます。</p>").append("<p>認証するボタンを押すとアカウントが使用できます。</p>")
						.append("<b><a href='http://localhost:8080/emailauth?userid=").append(mvo.getUserid())
						.append("&enabled=").append(true).append("&target='_blank")
						.append("'><button type='button' style='border:1px solid green; background-color:transparent;padding:10px; border-radius:4px;'>メール認証</button></a></b><br>")
						.append("<br><p>もし、間違って送られたメールならば無視してください。</p></body></html>").toString();
				helper.setText(body); // 여기에 이메일 쓸 컨텐츠 부분.
				mimeMessage.setContent(body, "text/html; charset=UTF-8");
				log.info(helper.getMimeMessage());
				// 파일 첨부시
				/*
				 * FileSystemResource file = new FileSystemResource(new File("E:/test.hwp"));
				 * helper.addAttachment("test.hwp", file);
				 * 
				 */
			}
		};
		mailSender.setDefaultEncoding("utf-8");
		mailSender.send(preparator);
		return "result";
	}
}
