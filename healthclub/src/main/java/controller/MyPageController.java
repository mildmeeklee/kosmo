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

@Controller
public class MyPageController {

	@Autowired
	ScheduleDAO dao;

	public void setDao(ScheduleDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	ProgramDAO dao1;
	
	public void setDao1(ProgramDAO dao1) {
		this.dao1 = dao1;
	}


	@RequestMapping(value = "mypagescheduleViewM.do", method = RequestMethod.GET)
	public String scheduleViewM(HttpSession session, Model m) {

		String id = (String) session.getAttribute("id");
		String idCk = dao.selcetOne(id);
		if (id.equals(idCk)){
			
			ScheduleInfo si = dao.Select(id);
			m.addAttribute("scheduleView", si);
			
			List<ProgramInfo> li = dao1.selectAll();
			m.addAttribute("programView", li);
			
			return "mypage/scheduleView";
		}
		return "mypage/schedulewrite";
	}
	
	@RequestMapping(value="schedulewrite.do", method=RequestMethod.GET)
	public String schedulewrite(){
		return "redirect:schedule.do";
		
	}
}
