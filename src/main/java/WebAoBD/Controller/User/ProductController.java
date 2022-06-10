package WebAoBD.Controller.User;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import WebAoBD.Service.User.ProductServiceImpl;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private ProductServiceImpl productService;
	
	@RequestMapping(value = {"chi-tiet-san-pham/{id}"})
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", productService.GetProductById(id));
		int id_category = productService.GetProductById(id).getId_category();
		_mvShare.addObject("productByCid", productService.GetProductByCid(id_category));
		return _mvShare;
	}
	@RequestMapping(value = "/san-pham")
	public ModelAndView Product() {
		_mvShare.addObject("allProduct", productService.GetAllProduct());
		_mvShare.setViewName("user/products/allproduct");
		return _mvShare;
	}
	@RequestMapping(value = "/tim-kiem")
	public ModelAndView Product(HttpServletRequest request) {
		String name = request.getParameter("name");
		_mvShare.addObject("allProduct", productService.SerchProductByName(name));
		request.setAttribute("nameS", name);
		_mvShare.setViewName("user/products/allproduct");
		return _mvShare;
	}

}
