package kr.co.rent.logincontroller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rent.loginservice.LoginService;
import kr.co.rent.membervo.MemberVO;

@Controller
public class LoginController {

	@Autowired
	@Qualifier("ls")
	private LoginService service;
	
	@RequestMapping("/login/login") // 로그인페이지
	public String login(Model model, HttpServletRequest request) {
		if(request.getParameter("err")!=null)
			model.addAttribute("err",request.getParameter("err")); // 로그인실패
		return "/login/login";
	}
	
	@RequestMapping("/login/login_ok") // 로그인완성
	public String login_ok(MemberVO mvo, HttpSession session) {
		return service.login_ok(mvo, session);
	}
	
	@RequestMapping("/login/logout") // 로그아웃
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../main/index";
	}
	
	@RequestMapping("/login/userid_search") // 로그인페이지 아이디찾기
	public void userid_search(MemberVO mvo, PrintWriter out){
		service.userid_search(mvo, out);
	}
	
	@RequestMapping("/login/pwd_search") // 로그인페이지 비밀번호찾기
	public void pwd_search(MemberVO mvo, PrintWriter out) {
		service.pwd_search(mvo, out);
	}
}
