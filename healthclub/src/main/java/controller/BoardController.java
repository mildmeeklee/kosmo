package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.BoardDAO;
import mybatis.BoardInfo;
import mybatis.LogUserDAO;
import mybatis.NoticeInfo;

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
	 * main page -> 게시판으로 이동
	 */
	@RequestMapping(value = "boardlist.do", method=RequestMethod.GET)
	public String board(Model m){
		
		List<BoardInfo> boardlist = dao.selectAll();
		m.addAttribute("boardlist", boardlist);
		return "board/list";
	}
	
	/**
	 * 게시판 list -> 게시판글 write page
	 */
	@RequestMapping(value = "boardwriteM.do", method=RequestMethod.GET)
	public String boardwriteM(){
		return "board/write";
	}
	
	/**
	 * 게시판글 write 
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
	
	/**
	 * 게시판글 내용보기
	 */
	@RequestMapping(value = "boardcontent.do", method=RequestMethod.GET)
	public String boardcontent(
			@RequestParam("b_num") int b_num, Model m){
		
		BoardInfo boardcontent = dao.selectOne(b_num);
		m.addAttribute("boardcontent" ,boardcontent);
		
		return "board/content";
	}
	
	/**
	 *  게시판 글 수정페이지 이동
	 */
	@RequestMapping(value="boardupdateM.do",  method = RequestMethod.GET)
	public String boardupdateM(
			@RequestParam("b_id") String b_id,
			@RequestParam("b_num") int b_num,
			HttpSession session, Model m){
		
		String id = (String)session.getAttribute("id");
		
		if(id.equals(b_id)){
			BoardInfo boardcontent = dao.selectOne(b_num);
			m.addAttribute("boardcontent" ,boardcontent);
			return "board/update";
		}else{
			return "login/main";
		}
	}
	
}
