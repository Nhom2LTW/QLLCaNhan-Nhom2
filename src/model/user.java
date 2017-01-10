package model;

public class user {
	private String uid;
	private String fn;
	private String ln;
	private String un;
	private String cpass;
	private String ngaysinh;
	private String email;
	private String phone;
	private String status;
	private String position;
	public user(String uid, String fn, String ln, String un, String cpass, String ngaysinh, String email, String phone,
			String status, String position) {
		super();
		this.uid = uid;
		this.fn = fn;
		this.ln = ln;
		this.un = un;
		this.cpass = cpass;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.position = position;
	}
	public user() {
		super();
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getFn() {
		return fn;
	}
	public void setFn(String fn) {
		this.fn = fn;
	}
	public String getLn() {
		return ln;
	}
	public void setLn(String ln) {
		this.ln = ln;
	}
	public String getUn() {
		return un;
	}
	public void setUn(String un) {
		this.un = un;
	}
	public String getCpass() {
		return cpass;
	}
	public void setCpass(String cpass) {
		this.cpass = cpass;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
	
}
