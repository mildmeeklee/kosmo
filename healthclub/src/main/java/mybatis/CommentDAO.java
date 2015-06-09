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
	public void delete(int c_num) {
		getSqlSession().delete("comment.delete", c_num);
	}
	
}
