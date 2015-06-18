package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import mybatis.CartDAO;
import mybatis.CartInfo;
import mybatis.ItemDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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

	@RequestMapping(value = "mypageCart.do", method = RequestMethod.POST)
	public String Cart(@RequestParam("s_id") String s_id,
			@RequestParam("i_item") int i_item,
			@RequestParam("s_num") int s_num, Model m) {

		int itemPay = dao2.selOne(i_item).getI_price();
		int s_sum = s_num * itemPay;

		dao.insert(s_id, i_item, s_num, s_sum);

		List<CartInfo> cartlist = dao.selectAll(s_id);

		CartInfo sum = dao.selectTwo(s_id);

		m.addAttribute("cartlist", cartlist);
		m.addAttribute("sum", sum);
		return "cart/cartlist";
	}

	@RequestMapping(value = "mypagecartlist.do", method = RequestMethod.GET)
	public String Cartlist(HttpSession session, Model m) {
		String s_id = (String) session.getAttribute("id");
		List<CartInfo> cartlist = dao.selectAll(s_id);
		CartInfo sum = dao.selectTwo(s_id);
		m.addAttribute("cartlist", cartlist);
		m.addAttribute("sum", sum);
		return "cart/cartlist";
	}

	/**
	 * delcart -> 삭제
	 */
	@RequestMapping(value = "delcart.do", method = RequestMethod.POST)
	public String cartdelete(@RequestParam("cart_num") int cart_num) {
		dao.delete(cart_num);
		return "redirect:mypagecartlist.do";
	}

	/**
	 * buy -> 구매
	 */
	@RequestMapping(value = "buycart.do", method = RequestMethod.POST)
	public String cartbuy(@RequestParam("cart_num") int cart_num) {
		dao.delete(cart_num);
		return "cart/buy";
	}

	/**
	 * upcart -> 수정
	 */
	@RequestMapping(value = "mypageupcart.do", method = RequestMethod.POST)
	public String boardup(@RequestParam("cart_num") int cart_num, Model m) {

		CartInfo cart = dao.select1(cart_num);
		m.addAttribute("cart", cart);

		return "cart/cartUp";
	}

	/**
	 * update -> 수정
	 */
	@RequestMapping(value = "updatecart.do", method = RequestMethod.POST)
	public String cartupdate(@RequestParam("cart_num") int cart_num,
			@RequestParam("i_item") int i_item,
			@RequestParam("s_num") int s_num, HttpSession session) {
		int itemPay = dao2.selOne(i_item).getI_price();
		int s_sum = s_num * itemPay;
		dao.up(cart_num, s_num, s_sum);
		return "redirect:mypagecartlist.do";
	}

}
