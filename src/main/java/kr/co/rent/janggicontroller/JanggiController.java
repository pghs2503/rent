package kr.co.rent.janggicontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.janggiservice.JanggiService;


@Controller
public class JanggiController {

	@Autowired
	@Qualifier("js")
	private JanggiService service;
	
	@RequestMapping("/janggi/jang_home")
	public String jang_home(HttpServletRequest request,Model model)
	{
		return service.jang_home(request, model);
	}
	
	@RequestMapping("/janggi/jang_rsv")
	public String jang_rsv(HttpServletRequest request, Model model)
	{
		return service.jang_rsv(request, model);
	}
	@RequestMapping("/janggi/jang_confirm")
	public String jang_confirm(HttpServletRequest request, Model model)
	{
		return service.jang_confirm(request, model);
	}

	
}
