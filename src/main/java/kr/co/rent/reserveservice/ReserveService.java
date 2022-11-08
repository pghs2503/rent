package kr.co.rent.reserveservice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.rent.reservevo.ReserveVO;

public interface ReserveService {

	public String reserve(HttpServletRequest request, Model model);	
	public String reserve_next(HttpServletRequest request, Model model);
	public String reserve_ok(ReserveVO rvo,HttpSession session);
	public String reserve_view(HttpServletRequest request,ReserveVO rvo, Model model,HttpSession session);
	public String change_state(HttpServletRequest request);
}
