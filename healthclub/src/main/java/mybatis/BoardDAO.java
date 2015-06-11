package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BoardDAO extends SqlSessionDaoSupport {

	/**
	 * �Խ��ǿ� �÷����� �������� ��� ������
	 */
	public List<BoardInfo> selectAll() {
		List<BoardInfo> bi = getSqlSession().selectList("board.selectAll");
		return bi;
	}

	/**
	 * �Խ��ǿ� 4���� �� �����´�
	 */
	public List<BoardInfo> selectThree() {
		List<BoardInfo> bi = getSqlSession().selectList("board.select3");
		return bi;
	}

	/**
	 * �ۼ��� �Խ��Ǳ��� DB�� ����
	 */
	public void insert(String b_name, String b_conten, String id) {
		BoardInfo bi = new BoardInfo(b_name, b_conten, id);
		getSqlSession().insert("board.insert", bi);
	}

	/**
	 * �ۼ��� �Խ��Ǳ��� ����
	 */
	public void update(BoardInfo bi) {
		getSqlSession().update("board.update", bi);
	}

	/**
	 * �Խ��Ǳ� �Ѱ��� ���� ������ ������(�۹�ȣ��)
	 */
	public BoardInfo selectOne(int b_num) {
		BoardInfo bi = getSqlSession().selectOne("board.selectOne", b_num);
		return bi;
	}

	/**
	 * �ۼ��� �Խ��Ǳ��� ����
	 */
	public void delete(int b_num) {
		getSqlSession().update("board.delete", b_num);
	}

	/**
	 * ��ȸ�� ����
	 */

	public void up(int b_num) {
		getSqlSession().update("board.b_countUp", b_num);

	}

}
