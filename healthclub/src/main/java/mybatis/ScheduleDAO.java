package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ScheduleDAO extends SqlSessionDaoSupport {

	/**
	 * �ۼ��� ���α׷��� DB�� ����
	 */
	public void insert(ScheduleInfo si){
		getSqlSession().insert("schedule.insert",si);
	}

	public List<ScheduleInfo> selectAll() {
		List<ScheduleInfo> si = getSqlSession().selectList("schedule.selectAll");
		return si;
	}
}