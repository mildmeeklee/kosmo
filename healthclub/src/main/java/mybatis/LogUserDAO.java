package mybatis;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class LogUserDAO extends SqlSessionDaoSupport {

	/**
	 * 아이디 존재 유무 count하여 판단
	 */
	public int count(String id) {
		int a = getSqlSession().selectOne("users.count", id);
		System.out.print(a);
		return a;
	}

	/**
	 * 유효성 검사 이상없으면 DB에 insert
	 */
	public void insert(String id, String pw, String name, String userzipcode,
			String address, String sex, String ph, String birth, String email) {

		LogUserInfo x = new LogUserInfo(id, pw, name, userzipcode, address,
				sex, ph, birth, email);

		getSqlSession().insert("users.insert", x);

	}
	
	/**
	 * DB의 id값 비교
	 */
	public LogUserInfo selOne(String id) {
		LogUserInfo l = getSqlSession().selectOne("users.selectOneUser", id);
		return l;
	}
	

}
