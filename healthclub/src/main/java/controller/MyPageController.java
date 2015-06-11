package controller;

import javax.servlet.http.HttpSession;

import mybatis.ScheduleDAO;

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

	@RequestMapping(value = "mypagescheduleViewM.do", method = RequestMethod.GET)
	public String scheduleViewM(HttpSession session, Model m) {

		String id = (String) session.getAttribute("id");
		String idCk = dao.selcetOne(id);
		if (id.equals(idCk)){
			return "mypage/scheduleView";
		}
		return "mypage/schedulewrite";
	}
}
