package co.fin.core.nhu.ticket.vo;

import java.sql.Date;

public class TicketVo {
	private int ticket_no;
	private String exhibition_name;
	private Date exhibition_start_date;
	private Date exhibition_end_date;
	private String ticket_status;
	private String ticket_name;
	private int ticket_price;
	private int exhibition_no;
	
	public TicketVo() {
		// TODO Auto-generated constructor stub
	}

	public int getExhibition_no() {
		return exhibition_no;
	}

	public String getTicket_status() {
		return ticket_status;
	}

	public void setTicket_status(String ticket_status) {
		this.ticket_status = ticket_status;
	}

	public String getTicket_name() {
		return ticket_name;
	}

	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}

	public void setExhibition_no(int exhibition_no) {
		this.exhibition_no = exhibition_no;
	}

	public int getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}

	public int getTicket_price() {
		return ticket_price;
	}

	public void setTicket_price(int ticket_price) {
		this.ticket_price = ticket_price;
	}


	public Date getExhibition_start_date() {
		return exhibition_start_date;
	}

	public void setExhibition_start_date(Date exhibition_start_date) {
		this.exhibition_start_date = exhibition_start_date;
	}

	public Date getExhibition_end_date() {
		return exhibition_end_date;
	}

	public void setExhibition_end_date(Date exhibition_end_date) {
		this.exhibition_end_date = exhibition_end_date;
	}

	public String getExhibition_name() {
		return exhibition_name;
	}

	public void setExhibition_name(String exhibition_name) {
		this.exhibition_name = exhibition_name;
	}	
	
}
