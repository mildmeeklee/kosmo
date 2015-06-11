package mybatis;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ScheduleDAO extends SqlSessionDaoSupport{

	/**
	 * 작성한 스케줄표를 DB에저장
	 */
	public void insert(ScheduleInfo si){
		
		getSqlSession().insert("schedule.insert", si);
	}

	/**
	 * schedule DB에 내가 저장한 스케줄표가 있나 확인
	 */
	public int selcetCount(String id) {
		int i =getSqlSession().selectOne("schedule.selectCount", id);
		return 0;
	}
}
