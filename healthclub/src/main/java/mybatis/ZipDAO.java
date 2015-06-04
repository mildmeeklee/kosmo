package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class ZipDAO extends SqlSessionDaoSupport {
	
	/**
	 * area3�� ���� ���Ͽ� ���� ������ ������
	 */
	public List<Zipcode> selectAll(String area3) {
		List<Zipcode> list = getSqlSession().selectList("selectAllZip", area3);
		return list;
	}
}
