package kr.co.rent.loginservice;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.rent.loginmapper.LoginMapper;
import kr.co.rent.membervo.MemberVO;

@Service
@Qualifier("ls")
public class LgoinServiceImpl implements LoginService {

	@Autowired
	private LoginMapper mapper;
	
	@Override
	public String login_ok(MemberVO mvo, HttpSession session) {
		MemberVO mvo2 = mapper.login_ok(mvo);
		if(mvo2 == null) {
			return "redirect:/login/login?err=1";
		}
		else {
			session.setAttribute("userid", mvo2.getUserid());
			session.setAttribute("name", mvo2.getName());
			return "redirect:../main/index";
		}
	}
	
	@Override
	public void userid_search(MemberVO mvo, PrintWriter out) {
		String userid = mapper.userid_search(mvo);
		if(userid==null)
			userid = "0";
		out.print(userid);
		
		
	}
	
	@Override
	public void pwd_search(MemberVO mvo, PrintWriter out) {
		String pwd = mapper.pwd_search(mvo);
		if(pwd==null)
			pwd="0";
		out.print(pwd);
		
	}
}
