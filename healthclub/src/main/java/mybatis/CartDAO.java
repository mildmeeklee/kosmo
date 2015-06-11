package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class CartDAO extends SqlSessionDaoSupport {
	public void insert(String s_id, int i_tem, int s_num, int s_sum){
		CartInfo ci = new CartInfo(s_id, i_tem, s_num, s_sum);
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
}
