package mybatis;

public class ScheduleInfo {

	private String p_name;
	private String p_teacher;
	private String p_time;
	private String p_content;
	private int p_num;
	private String p_position;
	
	
	public String getP_name() {
		return p_name;
	}
	public String getP_teacher() {
		return p_teacher;
	}
	public String getP_time() {
		return p_time;
	}
	public String getP_content() {
		return p_content;
	}
	public int getP_num() {
		return p_num;
	}
	public String getP_position() {
		return p_position;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public void setP_teacher(String p_teacher) {
		this.p_teacher = p_teacher;
	}
	public void setP_time(String p_time) {
		this.p_time = p_time;
	}
	public void setP_content(String p_content) {
		this.p_content = p_content;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public void setP_position(String p_position) {
		this.p_position = p_position;
	}
	
	public ScheduleInfo(){};

}