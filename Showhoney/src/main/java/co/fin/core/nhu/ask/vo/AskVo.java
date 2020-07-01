package co.fin.core.nhu.ask.vo;

import java.sql.Date;

public class AskVo {
	private int ask_no;
	private String ask_title;
	private String ask_contents;
	private Date ask_date;
	private String ask_name;
	private String ask_email;
	
	public String getAsk_email() {
		return ask_email;
	}

	public void setAsk_email(String ask_email) {
		this.ask_email = ask_email;
	}

	public AskVo() {
		// TODO Auto-generated constructor stub
	}

	public Date getAsk_date() {
		return ask_date;
	}

	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}

	public String getAsk_name() {
		return ask_name;
	}

	public void setAsk_name(String ask_name) {
		this.ask_name = ask_name;
	}

	public int getAsk_no() {
		return ask_no;
	}

	public void setAsk_no(int ask_no) {
		this.ask_no = ask_no;
	}

	public String getAsk_title() {
		return ask_title;
	}

	public void setAsk_title(String ask_title) {
		this.ask_title = ask_title;
	}

	public String getAsk_contents() {
		return ask_contents;
	}

	public void setAsk_contents(String ask_contents) {
		this.ask_contents = ask_contents;
	}

	
	
}
