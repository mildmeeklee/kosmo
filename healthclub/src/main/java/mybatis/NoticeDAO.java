package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class NoticeDAO extends SqlSessionDaoSupport {

	/**
	 * 공지사항에 올려놓은 공지들을 모두 가져옴
	 */
	public List<NoticeInfo> selectAll() {
		List<NoticeInfo> ni = getSqlSession().selectList("notice.selectAll");
		return ni;
	}

	/**
	 * 공지사항에 올려놓은 공지들을 모두 가져옴
	 */
	public NoticeInfo selectOne(int n_num) {
		NoticeInfo ni = getSqlSession().selectOne("notice.selectOne", n_num);
		return ni;
	}

	/**
	 * 작성한 공지사항을 DB에 insert
	 */
	public void insert(String n_name, String n_content) {
		NoticeInfo ni = new NoticeInfo(n_name, n_content);
		getSqlSession().insert("notice.insert", ni);
		
	}
	
	/**
	 * 공지사항을 DB에서  delete
	 */
	public void delete(int n_num) {
		getSqlSession().delete("notice.delete", n_num);
	}
}
