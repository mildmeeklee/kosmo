package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	 * main page -> ������ page �̵�
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
	 * ������ page ����� -> ������ DB�� ����
	 */
	@RequestMapping(value = "schedulesave.do", method = RequestMethod.POST)
	public String schedulesave(ScheduleInfo si, HttpSession session) {

		String id = (String) session.getAttribute("id");

		String idCk = dao1.selcetOne(id);
		if (id.equals(idCk)) {

			System.out.println("�ش� ���̵�� ����� �������� �ֽ��ϴ�.");
			return "login/loginForm";
		}
			si.setSchedule_id(id);
			dao1.insert(si);

			return "login/main";

	}

	/**
	 * mildmeeklee 2015.06.11 add ajax controller
	 * 
	 * @param program
	 * @param response
	 
	@RequestMapping(value = "schedulesave.do", method = RequestMethod.GET, headers = "accept=application/json")
	public void getAjax(@RequestParam(value = "program") String program,
			HttpServletResponse response) {
		System.out.println("getAjax id :: " + program);

		String p_group = null;
		if (program.equals("h")) {
			p_group = "헬스";
			System.out.println("h = p_group :: " + p_group);
		} else if (program.equals("y")) {
			p_group = "요가";
			System.out.println("y = p_group :: " + p_group);
		} else {
			p_group = "PT";
			System.out.println("PT = p_group :: " + p_group);
		}
		List<ProgramInfo> list = dao.selectProgramList(p_group);
		for (ProgramInfo a : list) {
			System.out.println(a.toString());

		}
		ObjectMapper mapper = new ObjectMapper();
		response.setContentType("text/xml; charset= utf-8");
		try {
			response.getWriter().print(mapper.writeValueAsString(list));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	*/

}
