package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class NoticeDAO extends SqlSessionDaoSupport {

	/**
	 * �������׿� �÷����� �������� ��� ������
	 */
	public List<NoticeInfo> selectAll() {
		List<NoticeInfo> ni = getSqlSession().selectList("notice.selectAll");
		return ni;
	}

	/**
	 * �������׿� �÷����� �������� ��� ������
	 */
	public NoticeInfo selectOne(int n_num) {
		NoticeInfo ni = getSqlSession().selectOne("notice.selectOne", n_num);
		return ni;
	}

	/**
	 * �ۼ��� ���������� DB�� insert
	 */
	public void insert(String n_name, String n_content) {
		NoticeInfo ni = new NoticeInfo(n_name, n_content);
		getSqlSession().insert("notice.insert", ni);
		
	}
	
	/**
	 * ���������� DB����  delete
	 */
	public void delete(int n_num) {
		getSqlSession().delete("notice.delete", n_num);
	}
}
