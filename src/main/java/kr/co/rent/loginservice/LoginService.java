package kr.co.rent.loginservice;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import kr.co.rent.membervo.MemberVO;

public interface LoginService {

	public String login_ok(MemberVO mvo, HttpSession session);
	public void userid_search(MemberVO mvo, PrintWriter out);
	public void pwd_search(MemberVO mvo, PrintWriter out);
}
