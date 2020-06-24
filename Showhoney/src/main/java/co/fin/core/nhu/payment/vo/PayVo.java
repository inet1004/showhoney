package co.fin.core.nhu.payment.vo;

import java.sql.Date;

public class PayVo {
	private int payment_no;
	private Date payment_date;
	private String payment_approval_number;
	private String payment_type;
	private int payment_sum;
	private int ticket_no;
	private String customer_id;
	
	public PayVo() {
		// TODO Auto-generated constructor stub
	}

	public int getPayment_no() {
		return payment_no;
	}

	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}

	public Date getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
	}

	public String getPayment_approval_number() {
		return payment_approval_number;
	}

	public void setPayment_approval_number(String payment_approval_number) {
		this.payment_approval_number = payment_approval_number;
	}

	public String getPayment_type() {
		return payment_type;
	}

	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}

	public int getPayment_sum() {
		return payment_sum;
	}

	public void setPayment_sum(int payment_sum) {
		this.payment_sum = payment_sum;
	}

	public int getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	
	
}
