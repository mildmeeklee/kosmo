package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.BoardDAO;
import mybatis.BoardInfo;
import mybatis.LogUserDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController{

	/**
	 * SqlSessionDaoSupport BoardDAO
	 */
	@Autowired
	BoardDAO dao;
	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}
	
	/**
	 * main page -> �Խ������� �̵�
	 */
	@RequestMapping(value = "boardlist.do", method=RequestMethod.GET)
	public String board(Model m){
		
		List<BoardInfo> boardlist = dao.selectAll();
		m.addAttribute("boardlist", boardlist);
		return "board/list";
	}
	
	/**
	 * �Խ��� list -> �Խ��Ǳ� write page
	 */
	@RequestMapping(value = "boardwriteM.do", method=RequestMethod.GET)
	public String boardwriteM(){
		return "board/write";
	}
	
	/**
	 * �Խ��Ǳ� write 
	 */
	@RequestMapping(value = "boardwrite.do", method=RequestMethod.POST)
	public String boardwrite(
			@RequestParam("b_name") String b_name,
			@RequestParam("b_content") String b_content,
			HttpSession session,
			Model m){
		
		String b_id = (String)session.getAttribute("id");
		
		dao.insert(b_name, b_content, b_id);
		return "redirect:boardlist.do";
	}
	
}
