package co.fin.core.kbk.booth.vo;

import org.springframework.web.multipart.MultipartFile;

public class ProductVo {

	private int product_no;
	private String product_name;
	private String product_desc;
	private String product_image_path;
	private MultipartFile product_uploadfile;
	private String product_mall;
	private int booth_no;

	public int getBooth_no() {
		return booth_no;
	}

	public void setBooth_no(int pvo) {
		this.booth_no = pvo;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public String getProduct_image_path() {
		return product_image_path;
	}

	public void setProduct_image_path(String product_image_path) {
		this.product_image_path = product_image_path;
	}

	public MultipartFile getProduct_uploadfile() {
		return product_uploadfile;
	}

	public void setProduct_uploadfile(MultipartFile product_uploadfile) {
		this.product_uploadfile = product_uploadfile;
	}

	public String getProduct_mall() {
		return product_mall;
	}

	public void setProduct_mall(String product_mall) {
		this.product_mall = product_mall;
	}

}
