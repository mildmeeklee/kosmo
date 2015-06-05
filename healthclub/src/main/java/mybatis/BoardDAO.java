package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BoardDAO extends SqlSessionDaoSupport{

	/**
	 * �Խ��ǿ� �÷����� �������� ��� ������
	 */
	public List<BoardInfo> selectAll() {
		List<BoardInfo> bi = getSqlSession().selectList("board.selectAll");
		return bi;
	}
	
	/**
	 * �ۼ��� �Խ��Ǳ��� DB�� ����
	 */
	public void insert(String b_name, String b_conten, String id){
		BoardInfo bi = new BoardInfo(b_name, b_conten, id);
		getSqlSession().insert("board.insert", bi);
	}
}
