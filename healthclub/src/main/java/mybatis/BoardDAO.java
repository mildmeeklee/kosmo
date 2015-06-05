package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BoardDAO extends SqlSessionDaoSupport{

	/**
	 * 게시판에 올려놓은 공지들을 모두 가져옴
	 */
	public List<BoardInfo> selectAll() {
		List<BoardInfo> bi = getSqlSession().selectList("board.selectAll");
		return bi;
	}
	
	/**
	 * 작성한 게시판글을 DB에 저장
	 */
	public void insert(String b_name, String b_conten, String id){
		BoardInfo bi = new BoardInfo(b_name, b_conten, id);
		getSqlSession().insert("board.insert", bi);
	}
}
