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
	 * ������ page -> ���α׷� ���� page �̵�
	 */
	@RequestMapping(value = "programlist_m.do", method = RequestMethod.GET)
	public String schedulelist_m(Model m) {
		List<ProgramInfo> si1 = dao.selectAll();
		m.addAttribute("programlist", si1);
		return "program/list_m";
	}

	/**
	 * ���α׷� ���� page -> ���α׷� ��� page
	 */
	@RequestMapping(value = "programwriteM.do", method = RequestMethod.GET)
	public String schedulewriteM() {
		return "program/write";
	}

	/**
	 * ���α׷� ��� page -> ���α׷����
	 */
	@RequestMapping(value = "programwrite.do", method = RequestMethod.POST)
	public String schedulewrite(ProgramInfo si) {
		String p_position = si.getP_day()+"_"+si.getP_time();
		si.setP_position(p_position);
		dao.insert(si);
		return "redirect:programlist_m.do";
	}
}