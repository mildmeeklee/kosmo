package controller;

import java.util.List;

import mybatis.ScheduleDAO;
import mybatis.ScheduleInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScheduleController {

	@Autowired
	ScheduleDAO dao;

	public void setDao(ScheduleDAO dao) {
		this.dao = dao;
	}

	/**
	 * 관리자 page -> 프로그램 관리 page 이동
	 */
	@RequestMapping(value = "schedulelist_m.do", method = RequestMethod.GET)
	public String schedulelist_m() {
		return "schedule/list_m";
	}

	/**
	 * 프로그램 관리 page -> 프로그램 등록 page
	 */
	@RequestMapping(value = "schedulewriteM.do", method = RequestMethod.GET)
	public String schedulewriteM() {
		return "schedule/write";
	}

	/**
	 * 프로그램 등록 page -> 프로그램등록
	 */
	@RequestMapping(value = "schedulewrite.do", method = RequestMethod.POST)
	public String schedulewrite(ScheduleInfo si, Model m) {

		dao.insert(si);
		List<ScheduleInfo> si1 = dao.selectAll();
		m.addAttribute("schedulelist", si1);
		return "schedule/list_m";
	}
}