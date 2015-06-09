package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ProgramDAO extends SqlSessionDaoSupport {

	/**
	 * 작성한 프로그램을 DB에 저장
	 */
	public void insert(ProgramInfo si){
		getSqlSession().insert("program.insert",si);
	}

	public List<ProgramInfo> selectAll() {
		List<ProgramInfo> si = getSqlSession().selectList("program.selectAll");
		return si;
	}
}