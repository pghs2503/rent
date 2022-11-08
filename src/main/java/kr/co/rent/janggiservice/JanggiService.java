package kr.co.rent.janggiservice;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.rent.adminvo.ProductVO;

public interface JanggiService {

	public String jang_rsv(HttpServletRequest request, Model model);

	public String jang_home(HttpServletRequest request, Model model);

	public String jang_confirm(HttpServletRequest request, Model model);

}
