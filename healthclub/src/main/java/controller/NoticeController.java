package controller;

import java.util.List;

import mybatis.NoticeDAO;
import mybatis.NoticeInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NoticeController {

	/**
	 * SqlSessionDaoSupport NoticeDAO
	 */
	@Autowired
	NoticeDAO dao;
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}


	/**
	 * main page -> ������������ �̵�
	 */
	@RequestMapping(value="notice.do",  method = RequestMethod.GET)
	public String noticelist(Model m){
		
		List<NoticeInfo> noticelist = dao.selectAll(); 
		m.addAttribute("noticelist", noticelist );
		return "notice/list";
	}
	
	
	/**
	 * �������װԽ��� -> Ư�� �������� �������� �̵�
	 */
	@RequestMapping(value="noticecontent.do",  method = RequestMethod.GET)
	public String noticecontent(
			@RequestParam("n_num") int n_num,
			Model m){
		
		NoticeInfo noticecontent = dao.selectOne(n_num); 
		m.addAttribute("noticecontent", noticecontent );
		
		return "notice/content";
	}
	
	/**
	 * ������ -> ������ �������� �������̵�
	 */
	@RequestMapping(value="noticelist_m.do",  method = RequestMethod.GET)
	public String noticelist_m(Model m){
		
		List<NoticeInfo> noticelist = dao.selectAll(); 
		m.addAttribute("noticelist", noticelist );
		
		return "notice/list_m";
	}
	
	/**
	 * ������ -> �������� �ۼ� �������̵�
	 */
	@RequestMapping(value="noticewriteM.do",  method = RequestMethod.GET)
	public String noticewriteM(){
		return "notice/write";
	}
	
	/**
	 * �ۼ��� ���������� DB�� ����
	 */
	@RequestMapping(value="noticewrite.do", method = RequestMethod.POST)
	public String noticewrite(
			@RequestParam("n_name") String n_name,
			@RequestParam("n_content") String n_content,
			Model m){
		
		String n_ct = n_content.toString(); 
		dao.insert(n_name, n_ct);
		
		return "redirect:noticelist_m.do";
	}
	
	/**
	 * Ȩ������ ���� ������ -> ��������
	 */
	@RequestMapping(value="noticedelete.do",  method = RequestMethod.GET)
	public String noticewriteM(@RequestParam("n_num") int n_num){
		int n = (Integer)n_num;
		
		dao.delete(n);
		return "redirect:noticelist_m.do";
	}
	
	/**
	 * Ȩ������ ���� ������ -> ���������� �̵�
	 */
	@RequestMapping(value="noticeupdateM.do",  method = RequestMethod.GET)
	public String noticeupdateM(@RequestParam("n_num") int n_num, Model m){
		
		NoticeInfo ni = dao.selectOne(n_num);
		m.addAttribute("noticeupdate",ni);
		
		return "notice/update";
	}
	
	/**
	 * Ȩ������ ���� ���������� -> ����
	 */
	@RequestMapping(value="noticeupdate.do",  method = RequestMethod.POST)
	public String noticeupdate(@RequestParam("n_num") int n_num, 
			@RequestParam("n_name") String n_name,
			@RequestParam("n_content") String n_content){
		
		NoticeInfo ni= new NoticeInfo(n_name, n_content);
		ni.setN_num(n_num);
		dao.update(ni);
		
		return "redirect:noticelist_m.do";
	}
	
	
	
}
