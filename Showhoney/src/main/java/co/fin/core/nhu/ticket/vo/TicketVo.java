package co.fin.core.nhu.ticket.vo;

import java.sql.Date;

public class TicketVo {
	private int ticket_no;
	private String exhibition_name;
	private Date exhibition_start_date;
	private Date exhibition_end_date;
	private int ticket_price;
	
	public TicketVo() {
		// TODO Auto-generated constructor stub
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
