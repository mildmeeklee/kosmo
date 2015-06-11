package mybatis;

public class CartInfo {
String s_id;
int i_tem;
int s_num;
int s_sum;
public String getS_id() {
	return s_id;
}
public void setS_id(String s_id) {
	this.s_id = s_id;
}
public int getI_tem() {
	return i_tem;
}
public void setI_item(int i_item) {
	this.i_tem = i_item;
}
public int getS_num() {
	return s_num;
}
public void setS_num(int s_num) {
	this.s_num = s_num;
}
public int getS_sum() {
	return s_sum;
}
public void setS_sum(int s_sum) {
	this.s_sum = s_sum;
}

CartInfo(){}

CartInfo(String s_id){
	this.s_id = s_id;
}

CartInfo(int i_tem){
	this.i_tem = i_tem;
}

CartInfo(String s_id , int i_tem){
	this.s_id = s_id;
	this.i_tem = i_tem;
}

CartInfo(String s_id, int i_tem, int s_num , int s_sum){
	this.s_id = s_id;
	this.i_tem = i_tem;
	this.s_num = s_num;
	this.s_sum = s_sum;
}
}
