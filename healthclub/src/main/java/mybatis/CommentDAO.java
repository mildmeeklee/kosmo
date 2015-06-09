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
	public void deleteC(int c_num) {
		getSqlSession().delete("comment.deleteC", c_num);
	}
	
	/**
	 * �Խñ� ������ ���� �ڸ�Ʈ ����
	 */
	public void deleteB(int b_num) {
		getSqlSession().delete("comment.deleteB", b_num);
	}
	
}
