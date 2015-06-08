package mybatis;

import java.util.Date;

public class BoardInfo {

	private int b_num;
	private String b_name;
	private String b_content;
	private String b_id;
	private int b_count;
	private Date b_date;

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public BoardInfo() {
	}

	public BoardInfo(int b_num, String b_name, String b_content) {
		this.b_name = b_name;
		this.b_content = b_content;
		this.b_num = b_num;
	}

	public BoardInfo(String b_name, String b_conten, String b_id) {
		this.b_name = b_name;
		this.b_content = b_conten;
		this.b_id = b_id;
	}
}
