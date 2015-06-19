package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.ItemDAO;
import mybatis.ItemInfo;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ItemController {
   /**
    * SqlSessionDaoSupport ItemDAO
    */
   @Autowired
   ItemDAO dao;
   public void setDao(ItemDAO dao) {
      this.dao = dao;
   }
  
   //�ø��� �̹������� ������ ����Ǳ����� ���� �ð��� �߰��� �����ϱ�����
   String inTime = new java.text.SimpleDateFormat("HHmmss").format(new java.util.Date());
   
   int d = 6;   //itemlist.do -> PagingService(blockCount);
   int e = 6;  //itemlist.do ->PagingService(blockPage);
   
   /**
    * main page���� -> �ｺ��ǰ���� �̵�
    */
   @RequestMapping(value = "itemlist.do", method = RequestMethod.GET)
   public String item(@RequestParam(value="p", defaultValue="1") String p , Model m) {
      List<ItemInfo> itemtable = dao.selectAll();
   
      int a = Integer.parseInt(p);
      int b = itemtable.size();
   
      ItemPagingService paging = new ItemPagingService(a, b, e, d);
      String page = paging.getPagingHtml().toString();
      if (paging.getEndCount() < b)
         b = paging.getEndCount() + 1;
      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
      itemtable = itemtable.subList(paging.getStartCount(), b);
      m.addAttribute("page",page);
      
   
      m.addAttribute("itemtable", itemtable);
      
      return "item/list";
   }
   
   /**
    * ������ -> ��ǰ��� �������̵�
    */
   @RequestMapping(value = "managerssubmit.do", method = RequestMethod.GET)
   public String form() {
      return "item/submissionForm";
   }
   /**
    * �ֽŻ�ǰ
    */
   int q = 6;   //itemlist.do -> PagingService(blockCount);
   int w = 6;  //itemlist.do ->PagingService(blockPage);
   @RequestMapping(value = "itemtoplist.do", method = RequestMethod.GET)
   public String weight(@RequestParam(value="p", defaultValue="1") String p , Model m) {
	      List<ItemInfo> itemtable = dao.selectAlllist();
	      
	      int a = Integer.parseInt(p);
	      int b = itemtable.size();
	   
	      ItemPagingService paging = new ItemPagingService(a, b, q, w);
	      String page = paging.getPagingHtml().toString();
	      if (paging.getEndCount() < b)
	         b = paging.getEndCount() + 1;
	      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
	      itemtable = itemtable.subList(paging.getStartCount(), b);
	      m.addAttribute("page",page);
	      m.addAttribute("itemtable", itemtable);
	      
      return "item/list";
   }
	   
   @RequestMapping(value = "itemcount.do", method = RequestMethod.GET)
   public String count(@RequestParam(value="p", defaultValue="1") String p , Model m) {
	      List<ItemInfo> itemtable = dao.selectcount();
	      
	      int a = Integer.parseInt(p);
	      int b = itemtable.size();
	   
	      ItemPagingService paging = new ItemPagingService(a, b, q, w);
	      String page = paging.getPagingHtml().toString();
	      if (paging.getEndCount() < b)
	         b = paging.getEndCount() + 1;
	      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
	      itemtable = itemtable.subList(paging.getStartCount(), b);
	      m.addAttribute("page",page);
	      m.addAttribute("itemtable", itemtable);
	      
      return "item/list";
   }
   /**
    * ������
    */
   @RequestMapping(value = "itemweight.do", method = RequestMethod.GET)
   public String itemweight(@RequestParam(value="p", defaultValue="1") String p , Model m) {
	   List<ItemInfo> itemtable = dao.selectitemweight();
	      
	      int a = Integer.parseInt(p);
	      int b = itemtable.size();
	   
	      ItemPagingService paging = new ItemPagingService(a, b, q, w);
	      String page = paging.getPagingHtml().toString();
	      if (paging.getEndCount() < b)
	         b = paging.getEndCount() + 1;
	      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
	      itemtable = itemtable.subList(paging.getStartCount(), b);
	      m.addAttribute("page",page);
	      m.addAttribute("itemtable", itemtable);
	      
	   
      return "item/list";
   } 
   
   /**
    * �ｺ��ǰ
    */
   @RequestMapping(value = "itemhealthArticle.do", method = RequestMethod.GET)
   public String healthArticle(@RequestParam(value="p", defaultValue="1") String p , Model m) {
	   List<ItemInfo> itemtable = dao.selecthealthArticle();
	      
	      int a = Integer.parseInt(p);
	      int b = itemtable.size();
	   
	      ItemPagingService paging = new ItemPagingService(a, b, q, w);
	      String page = paging.getPagingHtml().toString();
	      if (paging.getEndCount() < b)
	         b = paging.getEndCount() + 1;
	      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
	      itemtable = itemtable.subList(paging.getStartCount(), b);
	      m.addAttribute("page",page);
	      m.addAttribute("itemtable", itemtable);
	      
	   
      return "item/list";
   }
   
   /**
    * �ｺ��ǰ
    */
   @RequestMapping(value = "itemhealthWear.do", method = RequestMethod.GET)
   public String healthWear(@RequestParam(value="p", defaultValue="1") String p , Model m) {
	   List<ItemInfo> itemtable = dao.selecthealthWear();
	      
	      int a = Integer.parseInt(p);
	      int b = itemtable.size();
	   
	      ItemPagingService paging = new ItemPagingService(a, b, q, w);
	      String page = paging.getPagingHtml().toString();
	      if (paging.getEndCount() < b)
	         b = paging.getEndCount() + 1;
	      // ��ü ����Ʈ���� ���� ��������ŭ�� ����Ʈ�� �����´�.
	      itemtable = itemtable.subList(paging.getStartCount(), b);
	      m.addAttribute("page",page);
	      m.addAttribute("itemtable", itemtable);
	      
	   
      return "item/list";
   } 
   
   /**
    * �ｺ��ǰ Ŭ���� ����
    */
   @RequestMapping(value = "itemcontent.do", method = RequestMethod.GET)
   public String itemcontent (@RequestParam("i_num") int i_num,Model m ,  HttpSession session) {
	
	  
		String id = (String) session.getAttribute("id");
	   
	   ItemInfo item = dao.selOne(i_num);
	   dao.up(i_num);
	   	  m.addAttribute("id",id);
	      m.addAttribute("item", item);
	      
	   
      return "item/content";
   } 
   
   /**
    * ��ǰ��Ͻ� -> DB�� ����
    */
   @RequestMapping(value = "saveitmanagers.do", method = RequestMethod.POST)
   public String submitReport1(
         @RequestParam("i_name") String i_name,
         @RequestParam("i_price") int i_price,
         @RequestParam("i_content") String i_content,
         @RequestParam("file") MultipartFile file,
         @RequestParam("i_distinction") String i_distinction,
         Model m){
      
      //���� ����� Ȯ���� ���� (���� ���� �ִ���?)
      File f = new File("C:/Users/kosmo002/git/kosmo/healthclub/src/main/webapp/image", file.getOriginalFilename());
      if (f.exists()) {
         f = new File("C:/Users/kosmo002/git/kosmo/healthclub/src/main/webapp/image", inTime + file.getOriginalFilename() );
      }
      try {
         file.transferTo(f);
      } catch (IllegalStateException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      dao.insert(i_name,i_price, i_content, file.getOriginalFilename(), f.getPath() , i_distinction );
      List<ItemInfo> itemtable = dao.selectAll();
      m.addAttribute("itemtable", itemtable);
      
      return "item/success";
   }

  
   @RequestMapping(value = "managersseloneitem.do", method = RequestMethod.POST)
   public String selOne(@RequestParam("i_num") int i_num, Model m) {

      ItemInfo a = dao.selOne(i_num);
      m.addAttribute("item", a);
      return "manager/alter";
   }


   @RequestMapping(value ="upItem.do", method = RequestMethod.POST)
   public String up(@RequestParam("i_num") int i_num,
         @RequestParam("i_name") String i_name,
         @RequestParam("file") MultipartFile file,
         @RequestParam("i_content") String i_content , 
         @RequestParam("i_price") int i_price ,
         @RequestParam("i_distinction") String i_distinction ,Model m) {
	   
	  
      ItemInfo a = dao.selOne(i_num);
      File f = new File(a.getI_imageOrgname());
   		f = new File(a.getI_imagePath());
      	f.delete();
      	
      f = new File("C:/Users/kosmo002/git/kosmo/healthclub/src/main/webapp/image", file.getOriginalFilename());
      if (f.exists()) {
         f = new File("C:/Users/kosmo002/git/kosmo/healthclub/src/main/webapp/image", inTime
               + file.getOriginalFilename());
      }

      try {
         file.transferTo(f);
      } catch (IllegalStateException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
 
      dao.update(i_num ,i_name, i_price , i_content , f.getPath() ,file.getOriginalFilename() , i_distinction);
      
      return "redirect: managersControll.do";
      
   }
   @RequestMapping(value = "managersdel.do", method = RequestMethod.POST)
   public String del(@RequestParam("i_num") int i_num) {
      ItemInfo a = dao.selOne(i_num);
      File f = new File(a.getI_imageOrgname());
      
      f.delete();
      dao.delete(i_num);
      return "redirect: managersControll.do";
   }
}
		

