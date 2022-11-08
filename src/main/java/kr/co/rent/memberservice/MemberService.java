package kr.co.rent.memberservice;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.rent.membervo.LicenseVO;
import kr.co.rent.membervo.MemberVO;

public interface MemberService {
	
	
	public String member_input(HttpServletRequest request, Model model);
	public void useridChk(HttpServletRequest request, PrintWriter out);
	public String member_input_ok(MemberVO mvo);
	
	public String mypage(Model model, HttpSession session, LicenseVO lvo);
	public String license_ok(LicenseVO lvo, HttpSession session);
	
	public String myinfochange(MemberVO mvo, HttpSession session);
	public String passchange(MemberVO mvo, HttpSession session);
	public String memberout(MemberVO mvo, HttpSession session);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
