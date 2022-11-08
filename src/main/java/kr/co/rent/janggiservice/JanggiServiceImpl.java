package kr.co.rent.janggiservice;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.janggimapper.JanggiMapper;


@Service
@Qualifier("js")
public class JanggiServiceImpl implements JanggiService{

	@Autowired
	private JanggiMapper mapper;

	@Override
	public String jang_home(HttpServletRequest request, Model model) {
		String pcode = request.getParameter("pcode");
		String logo = request.getParameter("logo");
		if(pcode != null)
		{
			ArrayList<ProductVO> list = mapper.carsel(pcode);
			model.addAttribute("list", list);
			model.addAttribute("logo",logo);
		}

		return "/janggi/jang_home";
	}

	@Override
	public String jang_rsv(HttpServletRequest request, Model model) {
		String pcode = request.getParameter("pcode");
		String logo = request.getParameter("logo");
		ProductVO pvo = mapper.pimg(pcode);
		model.addAttribute("pvo",pvo);
		model.addAttribute("logo",logo);
		
		return "/janggi/jang_rsv";
	}

	@Override
	public String jang_confirm(HttpServletRequest request, Model model) {
		String pcode = request.getParameter("pcode");
		String logo = request.getParameter("logo");
		String grade = request.getParameter("grade");
		String outcolor = request.getParameter("outcolor");
		String incolor = request.getParameter("incolor");
		String conbi = request.getParameter("conbi");
		String gigan = request.getParameter("gigan");
		
		ProductVO pvo = mapper.jang_confirm(pcode);
		
		model.addAttribute("pvo",pvo);
		model.addAttribute("logo",logo);
		model.addAttribute("grade",grade);
		model.addAttribute("outcolor",outcolor);
		model.addAttribute("incolor",incolor);
		model.addAttribute("conbi",conbi);
		model.addAttribute("gigan",gigan);
		
		return "/janggi/jang_confirm";
	}
}
