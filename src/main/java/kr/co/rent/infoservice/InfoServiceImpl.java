package kr.co.rent.infoservice;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.rent.infomapper.InfoMapper;
import kr.co.rent.infovo.InfoVO;

@Service
@Qualifier("is")
public class InfoServiceImpl implements InfoService{

	@Autowired
	private InfoMapper mapper;
	
	@Override
	public String counsel_list(Model model) {
		ArrayList<InfoVO> list = mapper.counsel_list(model);
		model.addAttribute("list",list);
		return "/info/counsel_list";
	}

	@Override
	public String counsel_content(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		InfoVO ivo = mapper.counsel_content(id);
		model.addAttribute("ivo",ivo);
		return "/info/counsel_content";
	}
	@Override
	public String counsel_write_ok(InfoVO ivo) {
		mapper.counsel_write_ok(ivo);
		return "redirect:/info/counsel_list";
	}

	@Override
	public String counsel_delete(HttpServletRequest request) {
		String id = request.getParameter("id");
		mapper.counsel_delete(id);
		return "redirect:/info/counsel_list";
	}

}
