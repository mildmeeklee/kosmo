package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ZipDAO extends SqlSessionDaoSupport {
	
	/**
	 * area3와 값을 비교하여 같은 값들을 가져옴
	 */
	public List<Zipcode> selectAll(String area3) {
		List<Zipcode> list = getSqlSession().selectList("selectAllZip", area3);
		return list;
	}
}
