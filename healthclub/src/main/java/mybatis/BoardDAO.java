package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BoardDAO extends SqlSessionDaoSupport {

	/**
	 * 게시판에 올려놓은 공지들을 모두 가져옴
	 */
	public List<BoardInfo> selectAll() {
		List<BoardInfo> bi = getSqlSession().selectList("board.selectAll");
		return bi;
	}

	/**
	 * 게시판에 4개의 글 가져온다
	 */
	public List<BoardInfo> selectThree() {
		List<BoardInfo> bi = getSqlSession().selectList("board.select3");
		return bi;
	}

	/**
	 * 작성한 게시판글을 DB에 저장
	 */
	public void insert(String b_name, String b_conten, String id) {
		BoardInfo bi = new BoardInfo(b_name, b_conten, id);
		getSqlSession().insert("board.insert", bi);
	}

	/**
	 * 작성한 게시판글을 수정
	 */
	public void update(BoardInfo bi) {
		getSqlSession().update("board.update", bi);
	}

	/**
	 * 게시판글 한개의 관한 내용을 가져옴(글번호로)
	 */
	public BoardInfo selectOne(int b_num) {
		BoardInfo bi = getSqlSession().selectOne("board.selectOne", b_num);
		return bi;
	}

	/**
	 * 작성한 게시판글을 삭제
	 */
	public void delete(int b_num) {
		getSqlSession().update("board.delete", b_num);
	}

	/**
	 * 조회수 증가
	 */

	public void up(int b_num) {
		getSqlSession().update("board.b_countUp", b_num);

	}

}
