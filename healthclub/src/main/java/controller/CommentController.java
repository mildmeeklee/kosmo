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
	 * �ڸ�Ʈ �ۼ�
	 */
	@RequestMapping(value = "commentwrite", method = RequestMethod.POST)
	public String commentwrite(@RequestParam("c_bnum") int c_bnum,
			@RequestParam("c_content") String c_content, HttpSession session) {

		String id = (String) session.getAttribute("id");

		if (id != null) {
			CommentInfo ci = new CommentInfo(id, c_content, c_bnum);
			dao.insert(ci);

			return "redirect:boardlist.do";
		} else {
			return "redirect:loginForm.do";
		}

	}

	/**
	 * �ڸ�Ʈ ����
	 */
	@RequestMapping(value = "commentdelete.do", method = RequestMethod.GET)
	public String commentdelete(
			@RequestParam("c_id") String c_id,
			@RequestParam("c_num") int c_num, 
			HttpSession session) {
		
		String id = (String) session.getAttribute("id");

		if (id != null) {
			if (id.equals(c_id)) {
				dao.delete(c_num);
				return "redirect:boardlist.do";
			}else{ 
				System.out.println("::������ �ۼ��� �͸� ������ ������::");
				return "redirect:boardlist.do";
			}
		}
		return "redirect:loginForm.do";
	}
}
