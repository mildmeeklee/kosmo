package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.BoardDAO;
import mybatis.BoardInfo;
import mybatis.CommentDAO;
import mybatis.CommentInfo;
import mybatis.LogUserDAO;
import mybatis.NoticeInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {

	/**
	 * SqlSessionDaoSupport BoardDAO
	 */
	@Autowired
	BoardDAO dao;

	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	@Autowired
	CommentDAO dao1;

	public void setDao1(CommentDAO dao1) {
		this.dao1 = dao1;
	}

	/**
	 * main page -> 게시판으로 이동
	 */
	int e = 5;
	int d = 5;

	@RequestMapping(value = "boardlist.do", method = RequestMethod.GET)
	public String board(
			@RequestParam(value = "p", defaultValue = "1") String p, Model m) {
		List<BoardInfo> boardlist = dao.selectAll();
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
		return "board/list";
	}
	

	/**
	 * 게시판 list -> 게시판글 write page
	 */
	@RequestMapping(value = "boardwriteM.do", method = RequestMethod.GET)
	public String boardwriteM(HttpSession session) {
		if (session.getAttribute("id") != null) {
			return "board/write";
		} else {
			return "login/loginForm";
		}
	}

	/**
	 * 게시판글 write
	 */
	@RequestMapping(value = "boardwrite.do", method = RequestMethod.POST)
	public String boardwrite(@RequestParam("b_name") String b_name,
			@RequestParam("b_content") String b_content, HttpSession session,
			Model m) {

		String b_id = (String) session.getAttribute("id");

		dao.insert(b_name, b_content, b_id);
		return "redirect:boardlist.do";
	}

	/**
	 * 게시판글 내용보기
	 */
	int f = 5;
	int g = 5;

	@RequestMapping(value = "boardcontent.do", method = RequestMethod.GET)
	public String boardcontent(
			@RequestParam(value = "p", defaultValue = "1") String p,
			@RequestParam("b_num") int b_num, Model m) {

		BoardInfo boardcontent = dao.selectOne(b_num);
		m.addAttribute("boardcontent", boardcontent);
		dao.up(b_num);

		List<CommentInfo> commentInfo = dao1.selectAll(b_num);
		int a = Integer.parseInt(p);
		int b = commentInfo.size();

		CommentPagingService paging = new CommentPagingService(a, b, f, g,b_num);
		String page = paging.getPagingHtml().toString();
		if (paging.getEndCount() < b)
			b = paging.getEndCount() + 1;
		// 전체 리스트에서 현재 페이지만큼의 리스트만 가져온다.
		commentInfo = commentInfo.subList(paging.getStartCount(), b);
		m.addAttribute("page", page);

		m.addAttribute("commentInfo", commentInfo);
		return "board/content";
	}

	/**
	 * 게시판 글 수정페이지 이동
	 */
	@RequestMapping(value = "boardupdateM.do", method = RequestMethod.GET)
	public String boardupdateM(@RequestParam("b_id") String b_id,
			@RequestParam("b_num") int b_num, HttpSession session, Model m) {

		String id = (String) session.getAttribute("id");

		if (id != null) {
			if (id.equals(b_id)) {
				BoardInfo boardcontent = dao.selectOne(b_num);
				m.addAttribute("boardcontent", boardcontent);
				return "board/update";
			} else {
				System.out.println("::아이디가 다릅니다::");
				return "login/loginForm";
			}
		}
		return "login/loginForm";
	}

	/**
	 * 게시판 수정페이지 -> 수정
	 */
	@RequestMapping(value = "boardupdate.do", method = RequestMethod.POST)
	public String boardupdate(@RequestParam("b_num") int b_num,
			@RequestParam("b_name") String b_name,
			@RequestParam("b_content") String b_content) {

		BoardInfo bi = new BoardInfo(b_num, b_name, b_content);
		dao.update(bi);

		return "redirect:boardlist.do";
	}

	/**
	 * 게시판 수정페이지 -> 삭제
	 */
	@RequestMapping(value = "boarddelete.do", method = RequestMethod.GET)
	public String boarddelete(@RequestParam("b_id") String b_id,
			@RequestParam("b_num") int b_num, HttpSession session) {

		String id = (String) session.getAttribute("id");

		if (id != null) {
			if (id.equals(b_id)) {
				dao.delete(b_num);
				dao1.deleteB(b_num);
				return "redirect:boardlist.do";
			} else {
				return "redirect:boardlist.do";
			}
		} else {
			return "login/loginForm";
		}

	}
}
