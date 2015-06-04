package mybatis;

import java.util.*;
public class LogUserInfo {
	String id;
	String pw;
	String name;
	String userzipcode;
	String address;
	String sex;
	String ph;
	String birth;
	String email;
	int p_num;
	


	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}

	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
	public String getUserzipcode() {
		return userzipcode;
	}
	public void setUserzipcode(String userzipcode) {
		this.userzipcode = userzipcode;
	}

	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

	
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}

	
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String toString(){
		return "Id::"+id+"\n"
				+"Passwd::"+pw+"\n"
				+"Name::"+name+"\n"
				+"userzipcode::"+userzipcode+"\n"
				+"Address::"+address+"\n"
				+"sex::"+sex+"\n"
				+"ph::"+ph+"\n"
				+"birth::"+birth+"\n"
				+"email::"+email+"\n"
				+"p_num::"+p_num;		
	}
	
	LogUserInfo() {
	}

	LogUserInfo(String id, String pw, String name, String userzipcode,
			String address, String sex, String ph, String birth, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.userzipcode = userzipcode;
		this.address = address;
		this.sex = sex;
		this.ph = ph;
		this.birth =birth;
		this.email = email;
	
	}
}
