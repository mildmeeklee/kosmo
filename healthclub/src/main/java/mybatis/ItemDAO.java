package mybatis;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;


public class ItemDAO extends SqlSessionDaoSupport {

	/**
	 * 제품 리스트에 올려놓은 제품들을 모두 가져옴
	 */
	public List<ItemInfo> selectAll() {
		
		List<ItemInfo> list = getSqlSession().selectList("item.selectAll");
	
		return list;
	}
	
	/**
	 * 제품 일주일동안 올린 최신 리스트를 가져옴
	 */
	public List<ItemInfo> selectAlllist() {
		
		List<ItemInfo> list = getSqlSession().selectList("item.selectAlllist");

		return list;
	}
	
	/**
	 * DB에 제품 등록을 함  
	 */
	public void insert(String i_name, int i_price, String i_content, String i_imagePath, String i_imageOrgname,String i_distinction ){
	
		ItemInfo il = new ItemInfo(i_name, i_price, i_content, i_imagePath, i_imageOrgname, i_distinction);

		getSqlSession().insert("item.insert", il);
		
	}
	/*
	public void delet(int num){
		getSqlSession().delete("Member.del",num);
	}
	

	
	public User selOne(int num){
		
		User s = getSqlSession().selectOne("Member.selOne",num);
		return s;
	}


	public void up(int num, String subject,String content,String file_orgname, String file_path){
		User u2 = new User(num,subject,content,file_orgname,file_path);
		getSqlSession().update("Member.up",u2); 
	} 
*/


}
