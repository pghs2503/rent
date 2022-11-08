package kr.co.rent.memberservice;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.rent.membermapper.MemberMapper;
import kr.co.rent.membervo.LicenseVO;
import kr.co.rent.membervo.MemberVO;
import kr.co.rent.reservevo.ReserveVO;

@Service
@Qualifier("ms1")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public String member_input(HttpServletRequest request, Model model) {
		
		LocalDate today = LocalDate.now();
		int year = today.getYear();
		year = year -120;
		int nyear = today.getYear();
		System.out.println(year + " "+nyear);
		model.addAttribute("year",year);
		model.addAttribute("nyear",nyear);
		model.addAttribute("pr",request.getParameter("pr"));
		model.addAttribute("lo",request.getParameter("lo"));
		
		return "/member/member_input";
	}
	
	@Override
	public void useridChk(HttpServletRequest request, PrintWriter out) {
		
		String userid = mapper.useridChk(request.getParameter("userid"));
		if(userid == null)
			out.print(1);
		else
			out.print(0);
	}
	
	@Override
	public String member_input_ok(MemberVO mvo) {
		
		String y = mvo.getYy();
		String m = mvo.getMm();
		if(m.length()<2)
			m="0"+m;
		String d = mvo.getDd();
		if(d.length()<2)
			d="0"+d;
		String birthday = y+m+d;
		mvo.setBirthday(birthday);
		
		mapper.member_input_ok(mvo);
		
		return "redirect:/login/login";
	}
	
	@Override
	public String mypage(Model model, HttpSession session, LicenseVO lvo) {
		String userid = session.getAttribute("userid").toString();
		String birth = mapper.getbirth(userid);
		String sung = mapper.getsung(userid);
		int su=0;
		birth = birth.substring(2, 8);
		if(sung.equals("m"))
			su=1;
		else
			su=2;
		model.addAttribute("birth",birth);
		model.addAttribute("su",su);
		
		ArrayList<ReserveVO> rlist = mapper.danre(userid);
		if(rlist != null)
			model.addAttribute("rlist",rlist);
		
		LicenseVO lvo2 =mapper.license_list(userid);
		if(lvo2 != null)
			model.addAttribute("lvo2",lvo2);
		
		
		return "/member/mypage";
	}

	@Override
	public String license_ok(LicenseVO lvo, HttpSession session) {
		lvo.setUserid(session.getAttribute("userid").toString());
		//System.out.println(lvo.getBirthday()+lvo.getGigan1());
		mapper.license_ok(lvo);
		
		return "redirect:/member/mypage";
	}
	
	@Override
	public String myinfochange(MemberVO mvo, HttpSession session) {
		mvo.setUserid(session.getAttribute("userid").toString());
		mapper.myinfochange(mvo);
		return "redirect:/member/mypage";
	}
	
	public String getPwd(HttpSession session) {
		String pwd = mapper.getPwd(session.getAttribute("userid").toString());
		return pwd;
	}
	
	@Override
	public String passchange(MemberVO mvo, HttpSession session) {
		
		String oldpwd = getPwd(session);
		
		if(mvo.getPwd().equals(oldpwd)) {
			mapper.pwdchange(mvo.getPwd(),session.getAttribute("userid").toString());
			session.invalidate();
			return "redirect:../login/login";
		}
		else
			return "redirect:/member/mypage";

	}
	
	@Override
	public String memberout(MemberVO mvo, HttpSession session) {
		String oldpwd = getPwd(session);
		
		if(mvo.getPwd().equals(oldpwd)) {
			mapper.memberout(session.getAttribute("userid").toString());
			session.invalidate();
			return "redirect:../login/login";
		}
		else
			return "redirect:/member/mypage";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
