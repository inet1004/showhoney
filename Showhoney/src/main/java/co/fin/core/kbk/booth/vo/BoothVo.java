package co.fin.core.kbk.booth.vo;

import java.sql.Date;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class BoothVo {
	private int booth_no;
	private String brochure_path;
	private String video_path;
	private String video_call_path;
	private String booth_introduction;
	private int company_no;
	private int exhibition_no;
	private String company_tel;
	private String booth_profile;
	private MultipartFile booth_uploadfile;
	private MultipartFile brochure_uploadfile;
	private String product_mall;

	private String company_name;
	private String exhibition_name;
	
	private String[] product_img;
	private String[] product_name;
	private String[] product_desc;
	private MultipartFile[] product_uploadfile;

	private String company_user_id;
	
	public String getCompany_user_id() {
		return company_user_id;
	}

	public void setCompany_user_id(String company_user_id) {
		this.company_user_id = company_user_id;
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

	public int getPayment_approval_number() {
		return payment_approval_number;
	}

	public void setPayment_approval_number(int payment_approval_number) {
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

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	private int ticket_no;
	private int ticket_price;
	private String ticket_status;

	private String ticket_name;
	private int payment_no;
	private Date payment_date;
	private int payment_approval_number;
	private String payment_type;
	private int payment_sum;
	private String customer_id;
	
	
	
	
	
	

	@Override
	public String toString() {
		return "BoothVo [booth_no=" + booth_no + ", brochure_path=" + brochure_path + ", video_path=" + video_path
				+ ", video_call_path=" + video_call_path + ", booth_introduction=" + booth_introduction
				+ ", company_no=" + company_no + ", exhibition_no=" + exhibition_no + ", company_tel=" + company_tel
				+ ", company_name=" + company_name
				+ ", exhibition_name=" + exhibition_name + ", product_img=" + Arrays.toString(product_img)
				+ ", product_name=" + Arrays.toString(product_name) + ", product_desc=" + Arrays.toString(product_desc)
				+ ", product_mall=" + product_mall
				+ "]";
	}

	public String getProduct_mall() {
		return product_mall;
	}

	public void setProduct_mall(String product_mall) {
		this.product_mall = product_mall;
	}

	public String[] getProduct_img() {
		return product_img;
	}

	public void setProduct_img(String[] product_img) {
		this.product_img = product_img;
	}

	public String[] getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String[] product_name) {
		this.product_name = product_name;
	}

	public String[] getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String[] product_desc) {
		this.product_desc = product_desc;
	}

	public MultipartFile[] getProduct_uploadfile() {
		return product_uploadfile;
	}

	public void setProduct_uploadfile(MultipartFile[] product_uploadfile) {
		this.product_uploadfile = product_uploadfile;
	}

	public BoothVo() {
		// TODO Auto-generated constructor stub
	}

	public String getCompany_tel() {
		return company_tel;
	}

	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}

	public int getBooth_no() {
		return booth_no;
	}

	public void setBooth_no(int booth_no) {
		this.booth_no = booth_no;
	}

	public String getBrochure_path() {
		return brochure_path;
	}

	public void setBrochure_path(String brochure_path) {
		this.brochure_path = brochure_path;
	}

	public String getVideo_path() {
		return video_path;
	}

	public void setVideo_path(String video_path) {
		this.video_path = video_path;
	}

	public String getVideo_call_path() {
		return video_call_path;
	}

	public void setVideo_call_path(String video_call_path) {
		this.video_call_path = video_call_path;
	}

	public String getBooth_introduction() {
		return booth_introduction;
	}

	public void setBooth_introduction(String booth_introduction) {
		this.booth_introduction = booth_introduction;
	}

	public int getCompany_no() {
		return company_no;
	}

	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}

	public int getExhibition_no() {
		return exhibition_no;
	}

	public void setExhibition_no(int exhibition_no) {
		this.exhibition_no = exhibition_no;
	}

	public String getBooth_profile() {
		return booth_profile;
	}

	public void setBooth_profile(String booth_profile) {
		this.booth_profile = booth_profile;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getExhibition_name() {
		return exhibition_name;
	}

	public void setExhibition_name(String exhibition_name) {
		this.exhibition_name = exhibition_name;
	}

	public MultipartFile getBooth_uploadfile() {
		return booth_uploadfile;
	}

	public void setBooth_uploadfile(MultipartFile booth_uploadfile) {
		this.booth_uploadfile = booth_uploadfile;
	}

	public MultipartFile getBrochure_uploadfile() {
		return brochure_uploadfile;
	}

	public void setBrochure_uploadfile(MultipartFile brochure_uploadfile) {
		this.brochure_uploadfile = brochure_uploadfile;
	}

}