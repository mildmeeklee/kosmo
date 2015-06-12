package mybatis;

import java.util.Date;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ItemDAO extends SqlSessionDaoSupport {

	/**
	 * ��ǰ ����Ʈ�� �÷����� ��ǰ���� ��� ������
	 */
	public List<ItemInfo> selectAll() {

		List<ItemInfo> list = getSqlSession().selectList("item.selectAll");

		return list;
	}

	/**
	 * �ֽŻ�ǰ ����Ʈ
	 */
	public List<ItemInfo> selectThree() {

		List<ItemInfo> list = getSqlSession().selectList("item.selectAlllist");

		return list;
	}
	
	/**
	 * �ֽŻ�ǰ ����Ʈ
	 */
	public List<ItemInfo> selectAlllist() {

		List<ItemInfo> list = getSqlSession().selectList("item.select3");

		return list;
	}
	

	
	/**
	 * �ֽŻ�ǰ ����Ʈ
	 */
	public List<ItemInfo> selectcount() {

		List<ItemInfo> list = getSqlSession().selectList("item.selectcount");

		return list;
	}


	/**
	 * ������ ����Ʈ
	 */

	public List<ItemInfo> selectitemweight() {

		List<ItemInfo> list = getSqlSession().selectList("item.itemweight");

		return list;
	}

	/**
	 * �ｺ��ǰ
	 */

	public List<ItemInfo> selecthealthArticle() {

		List<ItemInfo> list = getSqlSession().selectList("item.itemhealthArticle");

		return list;
	}

	/**
	 * �ｺ�Ƿ�
	 */

	public List<ItemInfo> selecthealthWear() {

		List<ItemInfo> list = getSqlSession().selectList("item.itemhealthWear");

		return list;
	}
	
	/**
	 * ������ ����
	 */
	public ItemInfo selOne(int i_num) {
		ItemInfo l = getSqlSession().selectOne("item.selectOneitem", i_num);
		return l;
	}
	/**
	 * ������ ��ȸ��
	 */
	public void up(int i_num) {
		getSqlSession().update("item.i_countUp", i_num);
		
	}
	
	
	/**
	 * DB�� ��ǰ ����� ��
	 */
	public void insert(String i_name, int i_price, String i_content,
			String i_imagePath, String i_imageOrgname, String i_distinction) {

		ItemInfo il = new ItemInfo(i_name, i_price, i_content, i_imagePath,
				i_imageOrgname, i_distinction);

		getSqlSession().insert("item.insert", il);

	}

	
	public void delete(int i_num){ getSqlSession().delete("item.del",i_num); }
	 

	 public void update(int i_num, String i_name,int i_price,String i_content,
			 String i_imageOrgname, String i_imagePath, String i_distinction){ 
		 ItemInfo u2 = new ItemInfo(i_num, i_price, i_name, i_content,  i_imagePath,i_imageOrgname, i_distinction);
		 System.out.println(i_price);

		 System.out.println(i_imagePath);
		 System.out.println(i_imageOrgname);
		 getSqlSession().update("item.update",u2); 
	 }


}
