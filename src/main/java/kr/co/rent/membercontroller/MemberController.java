package kr.co.rent.membercontroller;




import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rent.memberservice.MemberService;
import kr.co.rent.membervo.LicenseVO;
import kr.co.rent.membervo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("ms1")
	private MemberService service;
	
	@RequestMapping("/member/member_input") // 회원가입 메인페이지
	public String member_input(HttpServletRequest request, Model model) {
		return service.member_input(request, model);
	}
	
	@RequestMapping("/member/member_input_info") // 회원가입 전 동의 페이지
	public String member_input_info() {
		return "/member/member_input_info";
	}
	
	@RequestMapping("/member/useridChk") // 회원가입 페이지 아이디 중복체크
	public void useridChk(HttpServletRequest request, PrintWriter out) {
		service.useridChk(request, out);
	}
	
	@RequestMapping("/member/member_input_ok") // 회원가입 db저장
	public String member_input_ok(MemberVO mvo) {
		return service.member_input_ok(mvo);
	}
	
	@RequestMapping("/member/mypage") // 마이페이지 출력
	public String mypage(Model model, HttpSession session, LicenseVO lvo) {
		return service.mypage(model, session, lvo);
	}
	
	@RequestMapping("/member/license_ok") // 면허증 등록
	public String license_ok(LicenseVO lvo, HttpSession session) {
		System.out.println(lvo.getBirthday());
		return service.license_ok(lvo, session);
	}
	
	@RequestMapping("/member/myinfochange")
	public String myinfochange(MemberVO mvo, HttpSession session) {
		return service.myinfochange(mvo, session);
	}
	
	@RequestMapping("/member/passchange")
	public String passchange(MemberVO mvo, HttpSession session) {
		return service.passchange(mvo, session);
	}
	
	@RequestMapping("/member/memberout")
	public String memberout(MemberVO mvo, HttpSession session) {
		return service.memberout(mvo, session);
	}
	
	
	
}
