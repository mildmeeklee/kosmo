package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.LogUserDAO;
import mybatis.LogUserInfo;
import mybatis.ZipDAO;
import mybatis.Zipcode;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MenuController {

	/**
	 * SqlSessionDaoSupport LogUserDAO
	 */
	@Autowired
	LogUserDAO dao;
	public void setDao(LogUserDAO dao) {
		this.dao = dao;
	}
	
	/**
	 * SqlSessionDaoSupport ZipDAO
	 */
	@Autowired
	ZipDAO dao2;
	public void setDao(ZipDAO dao2) {
		this.dao2 = dao2;
	}

	
	

	/**
	 * ����â���� -> �α���â���� �̵�
	 */
	@RequestMapping(value = "loginForm.do", method = RequestMethod.GET)
	public String loginform() {

		// �α���â���� �̵�
		return "login/loginForm";
	}

	/**
	 * �α���â���� -> ȸ������â���� �̵� 
	 * @ModelAttribute("logUserInfo") LogUserInfo LogUserInfo  :: ��ȿ�� �˻縦 ���� 
	 */
	@RequestMapping(value = "inputForm.do", method = RequestMethod.GET)
	public String inputform(@ModelAttribute("logUserInfo") LogUserInfo LogUserInfo) {

		// ȸ������â���� �̵�
		return "login/inputForm";
	}

	/**
	 * ȸ������â���� id�ߺ�Ȯ�� ->LogUserDAO count �޼��忡 ���� ���������Ǵ�.
	 * 
	 */
	@RequestMapping(value = "idcheck.do", method = RequestMethod.GET)
	public String Idckeck(@RequestParam("id") String id, Model m) {
		int a = dao.count(id);

		if (a > 0) {
			return "login/Idcheck";
		} else {
			return "login/checkOk";
		}
	}
	
	/**
	 * �����ȣ �ۼ��Ϸ��̵�
	 */
	@RequestMapping(value = "zip.do" , method =RequestMethod.GET)
	public String zip(){
	return "login/zipcode";
	}
	
	/**
	 * �����ȣ �Է�â���� ���̸� �˻��� area3�� ��
	 */
	@RequestMapping(value = "ZipCheck.do", method = RequestMethod.POST)
	public String ZipCheck(@RequestParam("area3") String area3, Model m) {

		List<Zipcode> list = dao2.selectAll(area3);
		m.addAttribute("area3", list);
		return "login/zipcode";
	}
	
	/**
	 * ȸ������â���� ��� ��ư�� ������ ����
	 */
	@RequestMapping(value = "input.do", method = RequestMethod.POST)
	public String Inputform(@ModelAttribute("logUserInfo") LogUserInfo u, 
			BindingResult result, Model m) {
		
		new MemberInfoValidator().validate(u, result);
		if (result.hasErrors()) {
			return "login/inputForm";
		}
		dao.insert(u.getId(), u.getPw(), u.getName(), u.getUserzipcode(),
				u.getAddress(), u.getSex(), u.getPh(), u.getBirth(),
				u.getEmail());
		return "login/loginForm";
	}

	/**
	 * �α��� â���� -> �α��� ��ư ������ Ȯ��/���� ������
	 */
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String Idform(@RequestParam("id") String id,
			@RequestParam("pw") String pw, HttpSession s, Model m) {

		try {
			LogUserInfo l = dao.selOne(id);
			if (l.getId().equals(id)) {
				if (l.getPw().equals(pw)) {
					s.setAttribute("id", id);
					s.setAttribute("pw", pw);
					/*return "file/success";*/
					return "login/main";
				}
				return "login/logerror";
			}
			return "login/logerror";
		} catch (Exception e) {
			return "login/logerror";
		}
	}
	
	/**
	 * �α��� �Ǿ��ִ� main page����  ->mypage�� �Ѿ
	 */
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String listform2(@RequestParam("id") String id ,Model m ) {
		
		LogUserInfo l = dao.selOne(id);
		m.addAttribute("userlist",l);
	
		return "login/userlist";
	}
	
	/**
	 * �α��� �Ǿ��ִ� main page����  ->logout�� �Ѿ
	 */
	@RequestMapping(value="logout.do" , method=RequestMethod.GET)
	public String logout(HttpSession s){
		s.invalidate();
		return "login/main";
	}
	
}
