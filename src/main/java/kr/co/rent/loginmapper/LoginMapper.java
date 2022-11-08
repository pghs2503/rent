package kr.co.rent.loginmapper;

import kr.co.rent.membervo.MemberVO;

public interface LoginMapper {

	public MemberVO login_ok(MemberVO mvo);
	public String userid_search(MemberVO mvo);
	public String pwd_search(MemberVO mvo);
}
