package kr.co.rent.infocontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.rent.infoservice.InfoService;
import kr.co.rent.infovo.InfoVO;

@Controller
public class InfoController {

	@Autowired
	@Qualifier("is")
	private InfoService service;
	
	@RequestMapping("/info/info_pay")	//요금 정보
	public String Info_pay()
	{
		return "/info/info_pay";
	}
	@RequestMapping("/info/check_service")	//체크인 정보
	public String check_service()
	{
		return "/info/check_service";
	}
	@RequestMapping("/info/buga_service")	//부가서비스 정보
	public String buga_service()
	{
		return "/info/buga_service";
	}
	@RequestMapping("/info/member_benefit")	//회원 혜택 정보
	public String member_benefit()
	{
		return "/info/member_benefit";
	}
	@RequestMapping("/info/month_rent")	//월간 렌트 정보
	public String month_rent()
	{
		return "/info/month_rent";
	}
	@RequestMapping("/info/counsel_white")	//월간 렌트 상담 작성
	public String counsel_white()
	{
		return "/info/counsel_white";
	}
	@RequestMapping("/info/counsel_write_ok")	//월간 렌트 상담 write 실행
	public String counsel_write_ok(InfoVO ivo)
	{
		return service.counsel_write_ok(ivo);
	}
	@RequestMapping("/info/counsel_list")	//월간 렌트 상담 list
	public String counsel_list(Model model)
	{
		return service.counsel_list(model);
	}
	@RequestMapping("/info/counsel_content")	//월간 렌트 상담 content
	public String counsel_content(HttpServletRequest request, Model model)
	{
		return service.counsel_content(request, model);
	}
	@RequestMapping("/info/counsel_delete")
	public String counsel_delete(HttpServletRequest request)
	{
		return service.counsel_delete(request);
	}
}
