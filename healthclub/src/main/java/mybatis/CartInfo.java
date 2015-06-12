package mybatis;

public class CartInfo {
String s_id;
int i_item;
int s_num;
int s_sum;
int cart_num;


public String getS_id() {
	return s_id;
}

public void setS_id(String s_id) {
	this.s_id = s_id;
}

public int getI_item() {
	return i_item;
}

public void setI_item(int i_item) {
	this.i_item = i_item;
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

public int getCart_num() {
	return cart_num;
}

public void setCart_num(int cart_num) {
	this.cart_num = cart_num;
}

CartInfo(){}


CartInfo(CartInfo cartlist){
	this.s_id = cartlist.getS_id();
	this.i_item = cartlist.getI_item();
	this.s_num = cartlist.getS_num();
	this.s_sum = cartlist.getS_sum();
	
}

CartInfo(String s_id){
	this.s_id = s_id;
}

CartInfo(int i_item){
	this.i_item = i_item;
}

CartInfo(String s_id , int i_item){
	this.s_id = s_id;
	this.i_item = i_item;
}

CartInfo(int cart_num , int s_num, int s_sum ){
	this.cart_num = cart_num;
	this.s_num = s_num;
	this.s_sum = s_sum;
	
}

CartInfo(String s_id, int i_item, int s_num , int s_sum){
	this.s_id = s_id;
	this.i_item = i_item;
	this.s_num = s_num;
	this.s_sum = s_sum;
}
}
