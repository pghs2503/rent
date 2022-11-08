package kr.co.rent.ReserveController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rent.reserveservice.ReserveService;
import kr.co.rent.reservevo.ReserveVO;

@Controller
public class ReserveController {

	@Autowired
	@Qualifier("rs")
	private ReserveService service;
	
	@RequestMapping("/reserve/reserve")	//예약 날짜, 지역 선택, 차량 선택
	public String reserve(HttpServletRequest request,Model model)
	{
		return service.reserve(request, model);
	}
	@RequestMapping("/reserve/reserve_next")
	public String reserve_next(HttpServletRequest request,Model model)
	{
		return service.reserve_next(request,model);
	}
	@RequestMapping("/reserve/reserve_ok")
	public String  reserve_ok(ReserveVO rvo,HttpSession session)
	{
		return service.reserve_ok(rvo,session);
	}
	@RequestMapping("/reserve/reserve_view")
	public String reserve_view(HttpServletRequest request,ReserveVO rvo,Model model,HttpSession session)
	{
		return service.reserve_view(request,rvo, model,session);
	}
	@RequestMapping("/reserve/change_state")
	public String change_state(HttpServletRequest request)
	{
		return service.change_state(request);
	}
}
