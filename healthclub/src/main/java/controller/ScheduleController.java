package controller;

import java.util.List;

import mybatis.ProgramDAO;
import mybatis.ProgramInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScheduleController {

	@Autowired
	ProgramDAO dao;
	public void setDao(ProgramDAO dao) {
		this.dao = dao;
	}

	/**
	 * main page -> 스케줄 page 이동
	 */
	@RequestMapping(value="schedule.do", method=RequestMethod.GET)
	public String schedule(ProgramInfo pi,Model m){
		
		List<ProgramInfo> pi1 = dao.selectAll();
		m.addAttribute("programInfo",pi1);
		return "schedule/main";
	}
	
}
