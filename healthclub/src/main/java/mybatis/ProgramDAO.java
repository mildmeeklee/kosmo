package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ProgramDAO extends SqlSessionDaoSupport {

	/**
	 * 占쌜쇽옙占쏙옙 占쏙옙占싸그뤄옙占쏙옙 DB占쏙옙 占쏙옙占쏙옙
	 */
	public void insert(ProgramInfo si){
		getSqlSession().insert("program.insert",si);
	}

	/**
	 * DB占쏙옙 占쏙옙占쏙옙占� 占쏙옙占싸그뤄옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙占쏙옙
	 */
	public List<ProgramInfo> selectAll() {
		List<ProgramInfo> si = getSqlSession().selectList("program.selectAll");
		return si;
	}
	public List<ProgramInfo> selectProgramList(String program){
		List<ProgramInfo> list = getSqlSession().selectList("program.selectProgramList", program);
		return list;		
	}
	
	public void delete(int p_num){
		getSqlSession().delete("program.delete",p_num);
	}
}