package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.BoardDAO;
import mybatis.BoardInfo;
import mybatis.ItemDAO;
import mybatis.ItemInfo;
import mybatis.LogUserDAO;
import mybatis.LogUserInfo;
import mybatis.NoticeDAO;
import mybatis.NoticeInfo;
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
	
	@Autowired
	BoardDAO dao3;

	public void setDao(BoardDAO dao3) {
		this.dao3 = dao3;
	}
	
	@Autowired
	ItemDAO dao4;
	public void setDao(ItemDAO dao4) {
		this.dao4 = dao4;
	}
	
	@Autowired
	NoticeDAO dao5;
	public void setDao(NoticeDAO dao5) {
		this.dao5 = dao5;
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
		
		return "redirect:loginForm.do";
	}
	
	/**
	 * mypage���� �����Ϸ� ��ư�� ������ �������� ����
	 */
	@RequestMapping(value = "mypageUpUp.do", method = RequestMethod.POST)
	public String UpUp(@ModelAttribute("logUserInfo") LogUserInfo u, 
			 Model m) {
		if (u.getPw().equals(u.getPw2())) {
			dao.update(u.getId(), u.getPw(), u.getName(), u.getUserzipcode(),
					u.getAddress(), u.getSex(), u.getPh(), u.getBirth(),
					u.getEmail());
			LogUserInfo l = dao.selOne(u.getId());
			m.addAttribute("userlist",l);
			return "mypage/mylist";
			}
	
		return "login/logerror";
	}

	/**
	 * �α��� â���� -> �α��� ��ư ������ Ȯ��/���� ������
	 */
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String Idform(@RequestParam("id") String id,
			@RequestParam("pw") String pw, 
			HttpSession session, Model m) {
		
		try {
			LogUserInfo l = dao.selOne(id);

			if (l.getId().equals(id)) {
				if (l.getPw().equals(pw)) {
					
					session.setAttribute("id", id);
					session.setAttribute("pw", pw);
					
					List<ItemInfo> itemtable = dao4.selectThree();
					m.addAttribute("itemtable", itemtable);
					List<NoticeInfo> noticelist = dao5.selectThree(); 
					m.addAttribute("noticelist", noticelist );
					List<BoardInfo> boardlist = dao3.selectThree();
					m.addAttribute("boardlist", boardlist);
					return "login/main";
				
					
				}
				
				return "redirect:logerror.do";
			}
			return "redirect:logerror.do";
		} catch (Exception e) {

			return "redirect:logerror.do";
		}
	}
	@RequestMapping(value = "logerror.do", method = RequestMethod.GET)
	public String logerror(){
		
		return "login/logerror";
	}
	
	/**
	 * �α��� ���������� �̵�
	 */
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String homep(Model m){
		
		List<ItemInfo> itemtable = dao4.selectThree();
		m.addAttribute("itemtable", itemtable);
		List<NoticeInfo> noticelist = dao5.selectThree(); 
		m.addAttribute("noticelist", noticelist );
		List<BoardInfo> boardlist = dao3.selectThree();
		m.addAttribute("boardlist", boardlist);
		
		return "login/main";
	}
	
	
	/**
	 * ���� ��ư�� ������ ���̵�� ��й�ȣ Ȯ���� ������������ �̵�
	 */
	@RequestMapping(value = "mypagepasswdcheck.do", method = RequestMethod.POST)
	public String Idupdate(
			@RequestParam("pw") String pw, HttpSession session, Model m) {

		try {
			String id = (String)session.getAttribute("id");
			
			LogUserInfo l = dao.selOne(id);
			if (l.getId().equals(id)) {
				if (l.getPw().equals(pw)) {
					m.addAttribute("userlist",l);
					return "mypage/mylistUpdate";
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
	
		return "mypage/mylist";
	}
	
	/**
	 * �α��� �Ǿ��ִ� main page����  ->logout�� �Ѿ
	 */
	@RequestMapping(value="logout.do" , method=RequestMethod.GET)
	public String logout(HttpSession s , Model m){
		List<ItemInfo> itemtable = dao4.selectThree();
		m.addAttribute("itemtable", itemtable);
		List<NoticeInfo> noticelist = dao5.selectThree(); 
		m.addAttribute("noticelist", noticelist );
		List<BoardInfo> boardlist = dao3.selectThree();
		m.addAttribute("boardlist", boardlist);
		
		s.invalidate();
		return "login/main";
	}
	
	/**
	 * bangbang Ŭ���� main �������� �̵�
	 */
	
	@RequestMapping(value="MainPage.do", method = RequestMethod.GET)
	public String MainPage(Model m){
		
		List<BoardInfo> boardlist = dao3.selectAll();
		m.addAttribute("boardlist", boardlist);
		List<ItemInfo> itemtable = dao4.selectAll();
		m.addAttribute("itemtable", itemtable);
		List<NoticeInfo> noticelist = dao5.selectAll(); 
		m.addAttribute("noticelist", noticelist );
		return "login/main"; 
	}
	
}
