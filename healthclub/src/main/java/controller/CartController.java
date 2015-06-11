package controller;

import java.util.List;

import mybatis.CartDAO;
import mybatis.CartInfo;
import mybatis.ItemDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {
	
	@Autowired
	CartDAO dao;

	public void setDao(CartDAO dao) {
		this.dao = dao;
	}
	@Autowired
	ItemDAO dao2;
	public void setDao(ItemDAO dao4) {
		this.dao2 = dao2;
	}
	
	@RequestMapping(value = "Cart.do", method = RequestMethod.POST)
	public String Cart(@RequestParam("s_id") String s_id,
								@RequestParam("i_tem") int i_tem,
								@RequestParam("s_num") int s_num,
								Model m) {	
		int itemPay = dao2.selOne(i_tem).getI_price();
		int s_sum = s_num*itemPay;
		
		dao.insert(s_id, i_tem, s_num, s_sum);
		
		List<CartInfo> cartlist = dao.selectAll(s_id);
		
		CartInfo sum = dao.selectTwo(s_id);
		
		m.addAttribute("cartlist", cartlist);
		m.addAttribute("sum", sum);
		return "cart/cartlist";
	}

	@RequestMapping(value="cartlist.do" , method = RequestMethod.GET)
	public String Cartlist(@RequestParam("s_id") String s_id , Model m){
		List<CartInfo> cartlist = dao.selectAll(s_id);
		CartInfo sum = dao.selectTwo(s_id);
		m.addAttribute("cartlist", cartlist);
		m.addAttribute("sum", sum);
		return "cart/cartlist";
	}
	
	
}
