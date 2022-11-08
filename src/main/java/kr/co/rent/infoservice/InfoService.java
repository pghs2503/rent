package kr.co.rent.infoservice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.rent.infovo.InfoVO;


public interface InfoService {

	public String counsel_list(Model model);

	public String counsel_content(HttpServletRequest request, Model model);
	
	public String counsel_write_ok(InfoVO ivo);

	public String counsel_delete(HttpServletRequest request);
}
