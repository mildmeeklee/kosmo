package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.ProgramDAO;
import mybatis.ProgramInfo;
import mybatis.ScheduleDAO;
import mybatis.ScheduleInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ScheduleController {

	@Autowired
	ProgramDAO dao;

	public void setDao(ProgramDAO dao) {
		this.dao = dao;
	}

	@Autowired
	ScheduleDAO dao1;

	public void setDao(ScheduleDAO dao1) {
		this.dao1 = dao1;
	}

	/**
	 * main page -> 스케줄 page 이동
	 */
	@RequestMapping(value = "schedule.do", method = RequestMethod.GET)
	public String schedule(ProgramInfo pi, Model m, HttpSession session) {

		
		if (session.getAttribute("id") != null) {
			List<ProgramInfo> pi1 = dao.selectAll();
			m.addAttribute("programInfo", pi1);
			return "schedule/main";
		}
		return "login/loginForm";
	}

	/**
	 * 스케줄 page 저장시 -> 스케줄 DB에 저장
	 */
	@RequestMapping(value = "schedulesave.do", method = RequestMethod.POST)
	public String schedulesave(
			@RequestParam("name") String name,
			ScheduleInfo si, HttpSession session) {
		
		System.out.println(name);
		String id = (String) session.getAttribute("id");

		int idCk = dao1.selcetCount(id);
		if (idCk == 0) {
			si.setSchedule_id(id);
			dao1.insert(si);

			return "login/main";
		} 
			System.out.println("해당 아이디로 저장된 스케줄이 있습니다.");
			return "login/loginForm";
		
	}

}
