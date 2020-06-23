package co.fin.core.nhu.exhibition.vo;

import java.sql.Date;

public class Exhibition2Vo {
	private int exhibition_no;
	private Date exhibition_start_date;
	private Date exhibition_end_date;
	private String exhibition_name;
	
	public Exhibition2Vo() {
		// TODO Auto-generated constructor stub
	}

	public int getExhibition_no() {
		return exhibition_no;
	}

	public void setExhibition_no(int exhibition_no) {
		this.exhibition_no = exhibition_no;
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
