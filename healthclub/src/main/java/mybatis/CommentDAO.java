package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class CommentDAO extends SqlSessionDaoSupport{

	/**
	 * �ڸ�Ʈ insert
	 */
	public void insert(CommentInfo ci){
		getSqlSession().insert("comment.insert",ci);
	}
	
	/**
	 * �ڸ�Ʈ ��������
	 */
	public List<CommentInfo> selectAll(int c_bnum) {
		List<CommentInfo> ci = getSqlSession().selectList("comment.selectAll",c_bnum);
		return ci;
	}

	/**
	 * �ڸ�Ʈ ����
	 */
	public void delete(int c_num) {
		getSqlSession().delete("comment.delete", c_num);
	}
	
}
