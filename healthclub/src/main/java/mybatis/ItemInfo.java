package mybatis;

import java.util.Date;

public class ItemInfo {
	String i_name;
	int i_num;
	int i_price;
	String i_content;
	Date i_time;
	int i_count;
	String i_imagePath;
	String i_imageOrgname;
	
	
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}

	
	public int getI_num() {
		return i_num;
	}
	public void setI_num(int i_num) {
		this.i_num = i_num;
	}

	public int getI_price() {
		return i_price;
	}
	public void setI_price(int i_price) {
		this.i_price = i_price;
	}

	
	public String getI_content() {
		return i_content;
	}
	public void setI_content(String i_content) {
		this.i_content = i_content;
	}

	
	public Date getI_time() {
		return i_time;
	}
	public void setI_time(Date i_time) {
		this.i_time = i_time;
	}

	
	public int getI_count() {
		return i_count;
	}
	public void setI_count(int i_count) {
		this.i_count = i_count;
	}

	
	public String getI_imagePath() {
		return i_imagePath;
	}
	public void setI_imagePath(String i_imagePath) {
		this.i_imagePath = i_imagePath;
	}

	
	public String getI_imageOrgname() {
		return i_imageOrgname;
	}
	public void setI_imageOrgname(String i_imageOrgname) {
		this.i_imageOrgname = i_imageOrgname;
	}

	public ItemInfo() {
		// TODO Auto-generated constructor stub
	}
	public String toString(){
		return "i_name::"+i_name+"\n"
				+"i_num::"+i_num+"\n"
				+"i_price::"+i_price+"\n"
				+"i_content::"+i_content+"\n"
				+"i_time::"+i_time+"\n"
				+"i_count::"+i_count+"\n"
				+"i_imagePath::"+i_imagePath+"\n"
				+"i_imageOrgname::"+i_imageOrgname+"\n"
				;
	}

	/*public ItemInfo(){}
	ItemInfo(String subject, String content , String file_orgname , String file_path) {
		this.subject = subject;
		this.content = content;
		this.file_orgname = file_orgname;
		this.file_path = file_path;
	}
	*/
	/**
	 * submissionForm에서 등록한 제품값을 DB값에 저장하는 생성자
	 */
	ItemInfo(String i_name, int i_num, int i_price, String i_content, String i_imagePath, String i_imageOrgname){
		this.i_name= i_name;
		this.i_num = i_num;
		this.i_price = i_price;
		this.i_content = i_content;
		this.i_count = i_count;
		this.i_imagePath = i_imagePath;
		this.i_imageOrgname = i_imageOrgname;
	}
}
