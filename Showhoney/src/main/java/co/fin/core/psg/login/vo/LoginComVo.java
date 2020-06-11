package co.fin.core.psg.login.vo;

public class LoginComVo {

	private String company_user_id;
	private String company_user_pw;
	
	
	
	public String getCompany_user_id() {
		return company_user_id;
	}



	public void setCompany_user_id(String company_user_id) {
		this.company_user_id = company_user_id;
	}



	public String getCompany_user_pw() {
		return company_user_pw;
	}



	public void setCompany_user_pw(String company_user_pw) {
		this.company_user_pw = company_user_pw;
	}



	@Override
	public String toString() {
		return "LoginComVo [company_user_id=" + company_user_id + ", company_user_pw=" + company_user_pw + "]";
	}
	

}
