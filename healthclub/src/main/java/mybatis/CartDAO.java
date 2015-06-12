package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class CartDAO extends SqlSessionDaoSupport {
	public void insert(String s_id, int i_item, int s_num, int s_sum){
		CartInfo ci = new CartInfo(s_id, i_item, s_num, s_sum);
		getSqlSession().insert("cart.insert", ci);
	}
	
	public List<CartInfo> selectAll(String s_id) {
		List<CartInfo> si = getSqlSession().selectList("cart.selectAll",s_id);
		return si;
	}
	
	public CartInfo selectTwo(String s_id){
	
		CartInfo i = getSqlSession().selectOne("cart.selectTwo",s_id);
		return i;
	}
	
	public CartInfo select1(int cart_num){
		CartInfo i = getSqlSession().selectOne("cart.select1",cart_num);

		return i;
	}
	
	public void delete(int cart_num){
		
		getSqlSession().update("cart.delete",cart_num);
	}
	
	public void up(int cart_num , int s_num , int s_sum){
		CartInfo c = new CartInfo(cart_num, s_num , s_sum);
		System.out.println(s_sum);
		getSqlSession().update("cart.up",c);
	}
}
