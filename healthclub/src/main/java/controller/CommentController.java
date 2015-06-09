package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.CommentInfo;
import mybatis.CommentDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CommentController {

	@Autowired
	CommentDAO dao;
	public void setDao(CommentDAO dao) {
		this.dao = dao;
	}

	/**
	 * 코맨트 작성
	 */
	@RequestMapping(value="commentwrite", method = RequestMethod.POST)
	public String commentwrite(
			@RequestParam("c_bnum") int c_bnum,
			@RequestParam("c_content") String c_content,
			HttpSession session){
		
		String id = (String) session.getAttribute("id");
		CommentInfo ci = new CommentInfo(id, c_content, c_bnum);
		dao.insert(ci);
		
		return "redirect:boardlist.do";
		
	}
}  
