package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class CommentDAO extends SqlSessionDaoSupport{

	/**
	 * 코멘트 insert
	 */
	public void insert(CommentInfo ci){
		getSqlSession().insert("comment.insert",ci);
	}
	
	/**
	 * 코멘트 가져오기
	 */
	public List<CommentInfo> selectAll(int c_bnum) {
		List<CommentInfo> ci = getSqlSession().selectList("comment.selectAll",c_bnum);
		return ci;
	}

	/**
	 * 코멘트 삭제
	 */
	public void deleteC(int c_num) {
		getSqlSession().delete("comment.deleteC", c_num);
	}
	
	/**
	 * 게시글 삭제시 관련 코멘트 삭제
	 */
	public void deleteB(int b_num) {
		getSqlSession().delete("comment.deleteB", b_num);
	}
	
}
