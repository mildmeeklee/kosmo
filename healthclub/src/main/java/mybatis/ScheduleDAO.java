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
	public String selcetOne(String id) {
		String i =getSqlSession().selectOne("schedule.selectCount", id);
		return i;
	}

	public ScheduleInfo Select(String id) {
		ScheduleInfo si = getSqlSession().selectOne("schedule.select",id);
		return si;
	}
	
	public void delete(String id){
		getSqlSession().delete("schedule.delete",id);
	}
}
