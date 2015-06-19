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
