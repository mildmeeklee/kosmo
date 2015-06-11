package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ProgramDAO extends SqlSessionDaoSupport {

	/**
	 * �ۼ��� ���α׷��� DB�� ����
	 */
	public void insert(ProgramInfo si){
		getSqlSession().insert("program.insert",si);
	}

	/**
	 * DB�� ����� ���α׷��� ��� ������
	 */
	public List<ProgramInfo> selectAll() {
		List<ProgramInfo> si = getSqlSession().selectList("program.selectAll");
		return si;
	}
	public List<ProgramInfo> selectProgramList(String program){
		List<ProgramInfo> list = getSqlSession().selectList("program.selectProgramList", program);
		return list;		
	}
}