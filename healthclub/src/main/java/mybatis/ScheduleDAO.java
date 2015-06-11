package mybatis;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ScheduleDAO extends SqlSessionDaoSupport{

	/**
	 * �ۼ��� ������ǥ�� DB������
	 */
	public void insert(ScheduleInfo si){
		
		getSqlSession().insert("schedule.insert", si);
	}

	/**
	 * schedule DB�� ���� ������ ������ǥ�� �ֳ� Ȯ��
	 */
	public int selcetCount(String id) {
		int i =getSqlSession().selectOne("schedule.selectCount", id);
		return 0;
	}
}
