package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import mybatis.ItemDAO;
import mybatis.ItemInfo;
import mybatis.LogUserInfo;

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
   
   int d = 5;   //itemlist.do -> PagingService(blockCount);
   int e = 5;  //itemlist.do ->PagingService(blockPage);
   
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
   @RequestMapping(value = "itemsubmit.do", method = RequestMethod.GET)
   public String form() {
      return "item/submissionForm";
   }
   /**
    * �ֽŻ�ǰ
    */
   int q = 5;   //itemlist.do -> PagingService(blockCount);
   int w = 5;  //itemlist.do ->PagingService(blockPage);
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
	      
      return "item/toplist";
   }
   /**
    * �α��ǰ
    */
   @RequestMapping(value = "popularity.do", method = RequestMethod.GET)
   public String healthArticle() {
      return "item/popularity";
   } 
   /**
    * ��ǰ��Ͻ� -> DB�� ����
    */
   @RequestMapping(value = "saveitem.do", method = RequestMethod.POST)
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

   /*   
   @RequestMapping(value = "selone.do", method = RequestMethod.POST)
   public String selOne(@RequestParam("num") int num, Model m) {

      User a = dao.selOne(num);
      m.addAttribute("file", a);
      return "file/alter";
   }

   
   @RequestMapping(value = "up.do", method = RequestMethod.POST)
   public String up(@RequestParam("num") int num,
         @RequestParam("subject") String subject,
         @RequestParam("file") MultipartFile file,
         @RequestParam("content") String content, Model m) {

      User a = dao.selOne(num);
      File f2 = new File(a.getFile_path());
      f2.delete();

      File f = new File("C:/Users/kosmo002/workspace/aaaaaaaaaa/src/main/webapp/image1", file.getOriginalFilename());
      if (f.exists()) {
         f = new File("C:/Users/kosmo002/workspace/aaaaaaaaaa/src/main/webapp/image1", inTime
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
      dao.up(num , subject , content , file.getOriginalFilename() , f.getPath());
      return "file/success";

   }
   @RequestMapping(value = "del.do", method = RequestMethod.POST)
   public String del(@RequestParam("num") int num) {
      User a = dao.selOne(num);
      File f = new File(a.getFile_path());
      f.delete();
      dao.delet(num);
      return "file/success";
   }
*/
}
		

