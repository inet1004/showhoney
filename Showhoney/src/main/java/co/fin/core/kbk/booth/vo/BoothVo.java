package co.fin.core.kbk.booth.vo;

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