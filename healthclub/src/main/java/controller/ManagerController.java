package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.BoardDAO;
import mybatis.BoardInfo;
import mybatis.CommentDAO;
import mybatis.LogUserDAO;
import mybatis.LogUserInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class ManagerController {
	
	/**
	 * SqlSessionDaoSupport LogUserDAO
	 */
	@Autowired
	LogUserDAO dao;
	public void setDao(LogUserDAO dao) {
		this.dao = dao;
	}
	@Autowired
	BoardDAO dao2;

	public void setDao(BoardDAO dao2) {
		this.dao2 = dao2;
	}

	@Autowired
	CommentDAO dao3;

	public void setDao1(CommentDAO dao3) {
		this.dao3 = dao3;
	}

	
	/**
	 * 관리자 페이지 로그인
	 */
	@RequestMapping(value = "Manager.do", method = RequestMethod.POST)
	public String Idform(@RequestParam("id") String id,
			@RequestParam("pw") String pw, HttpSession session, Model m) {

		try {
			LogUserInfo l = dao.selOneManager(id);
			if (l.getId().equals(id)) {
				if (l.getPw().equals(pw)) {
					session.setAttribute("id", id);
					session.setAttribute("pw", pw);
					
					return "manager/main";
				}
				return "login/logerror";
			}
			return "login/logerror";
		} catch (Exception e) {
			return "login/logerror";
		}
	}
	
	int e = 5;
	int d = 5;

	@RequestMapping(value ="boardManager.do", method = RequestMethod.GET)
	public String board(
			@RequestParam(value = "p", defaultValue = "1") String p, Model m) {
		List<BoardInfo> boardlist = dao2.selectAll();
		int a = Integer.parseInt(p);
		int b = boardlist.size();
		BoardPagingService paging = new BoardPagingService(a, b, e, d);
		String page = paging.getPagingHtml().toString();
		if (paging.getEndCount() < b)
			b = paging.getEndCount() + 1;
		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		boardlist = boardlist.subList(paging.getStartCount(), b);
		m.addAttribute("page", page);
		m.addAttribute("boardlist", boardlist);
		return "manager/list";
	}
	
	
		@RequestMapping(value = "board_Delete.do", method = RequestMethod.GET)
		public String boarddelete(@RequestParam(value="check" ,  defaultValue = "0") int[] check) {
				for(int i=0; i <= check.length-1; i++){
						dao2.delete(check[i]);
						dao3.deleteB(check[i]);
			}
		
			return "redirect:boardManager.do";

		}
}
