package co.fin.core.psg.login.vo;

public class LoginVo {

	private String customer_id;
	private String customer_pw;
	
	
	
	public String getCustomer_id() {
		return customer_id;
	}



	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}



	public String getCustomer_pw() {
		return customer_pw;
	}



	public void setCustomer_pw(String customer_pw) {
		this.customer_pw = customer_pw;
	}



	@Override
	public String toString() {
		return "LoginVo [customer_id=" + customer_id + ", customer_pw=" + customer_pw + "]";
	}
	

}
