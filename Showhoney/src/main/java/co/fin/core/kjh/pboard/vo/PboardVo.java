package co.fin.core.kjh.pboard.vo;

import java.sql.Date;

public class PboardVo {
	private int p_no;
	private String p_title;
	private String p_contents;
	private String company_user_id;
	private int company_no;
	private String company_name;
	private Date p_start_day;
	private int p_start_hour;
	private int p_start_minute;
	private int booth_no;
	private int exhibition_no;
	private String exhibition_name;
	private Date p_date;
	private String customer_id;
	private Integer count;
	
	public PboardVo() {
		// TODO Auto-generated constructor stub
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public String getP_contents() {
		return p_contents;
	}

	public void setP_contents(String p_contents) {
		this.p_contents = p_contents;
	}

	public String getCompany_user_id() {
		return company_user_id;
	}

	public void setCompany_user_id(String company_user_id) {
		this.company_user_id = company_user_id;
	}

	public int getCompany_no() {
		return company_no;
	}

	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}

	public int getP_start_hour() {
		return p_start_hour;
	}

	public void setP_start_hour(int p_start_hour) {
		this.p_start_hour = p_start_hour;
	}

	public int getP_start_minute() {
		return p_start_minute;
	}

	public void setP_start_minute(int p_start_minute) {
		this.p_start_minute = p_start_minute;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public int getBooth_no() {
		return booth_no;
	}

	public void setBooth_no(int booth_no) {
		this.booth_no = booth_no;
	}

	public int getExhibition_no() {
		return exhibition_no;
	}

	public void setExhibition_no(int exhibition_no) {
		this.exhibition_no = exhibition_no;
	}

	public String getExhibition_name() {
		return exhibition_name;
	}

	public void setExhibition_name(String exhibition_name) {
		this.exhibition_name = exhibition_name;
	}

	public Date getP_date() {
		return p_date;
	}

	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}

	public Date getP_start_day() {
		return p_start_day;
	}

	public void setP_start_day(Date p_start_day) {
		this.p_start_day = p_start_day;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	

	
	

}
