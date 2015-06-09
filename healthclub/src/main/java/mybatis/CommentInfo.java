package mybatis;

import java.util.Date;

public class CommentInfo {

	private int  c_num;
	private String c_id;
	private String c_content;
	private Date c_date;
	private int c_bnum;
	
	public int getC_num() {
		return c_num;
	}
	public String getC_id() {
		return c_id;
	}
	public String getC_content() {
		return c_content;
	}
	
	public Date getC_date() {
		return c_date;
	}
	
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}
	public int getC_bnum() {
		return c_bnum;
	}
	public void setC_bnum(int c_bnum) {
		this.c_bnum = c_bnum;
	}
	
	public CommentInfo(){}
	
	public CommentInfo(String c_id, String c_content, int c_bnum){
		this.c_id= c_id;
		this.c_content=c_content;
		this.c_bnum=c_bnum;
	}
	
}
