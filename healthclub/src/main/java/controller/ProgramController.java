package controller;

import java.util.List;

import mybatis.ProgramDAO;
import mybatis.ProgramInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProgramController {

	@Autowired
	ProgramDAO dao;

	public void setDao(ProgramDAO dao) {
		this.dao = dao;
	}

	/**
	 * 관리자 page -> 프로그램 관리 page 이동
	 */
	@RequestMapping(value = "programlist_m.do", method = RequestMethod.GET)
	public String schedulelist_m(Model m) {
		List<ProgramInfo> si1 = dao.selectAll();
		m.addAttribute("programlist", si1);
		return "program/list_m";
	}

	/**
	 * 프로그램 관리 page -> 프로그램 등록 page
	 */
	@RequestMapping(value = "programwriteM.do", method = RequestMethod.GET)
	public String schedulewriteM() {
		return "program/write";
	}

	/**
	 * 프로그램 등록 page -> 프로그램등록
	 */
	@RequestMapping(value = "programwrite.do", method = RequestMethod.POST)
	public String schedulewrite(ProgramInfo si) {
		dao.insert(si);
		return "redirect:programlist_m.do";
	}
}