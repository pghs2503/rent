package kr.co.rent.membermapper;

import java.util.ArrayList;

import kr.co.rent.membervo.LicenseVO;
import kr.co.rent.membervo.MemberVO;
import kr.co.rent.reservevo.ReserveVO;

public interface MemberMapper {

	
	public String useridChk(String id);
	public void member_input_ok(MemberVO mvo);
	
	public String getbirth(String userid);
	public String getsung(String userid);
	public void license_ok(LicenseVO lvo);
	
	public LicenseVO license_list(String userid);
	public void myinfochange(MemberVO mvo);
	public String getPwd(String userid);
	public void pwdchange(String pwd, String userid);
	public void memberout(String userid);
	
	public ArrayList<ReserveVO> danre(String userid);
	
	
	
	
	
	
	
	
	
	
}
