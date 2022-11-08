package kr.co.rent.reserveservice;

import java.sql.Date;
import java.text.DateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Calendar;

import javax.print.attribute.standard.Chromaticity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.reservemapper.ReserveMapper;
import kr.co.rent.reservevo.ReserveVO;
import kr.co.rent.membervo.MemberVO;

@Service
@Qualifier("rs")
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveMapper mapper;

	@Override
	public String reserve(HttpServletRequest request, Model model) {
		String inday=request.getParameter("inday");
		String outday=request.getParameter("outday");
		String area=request.getParameter("area");
		System.out.println(inday+outday+area);
		
		String pcode = request.getParameter("pcode");
		//System.out.println(pcode);
		//mapper.reserve_cnt(pcode);
		if(pcode != null)
		{
			//int cnt=0;
			ArrayList<ProductVO> list = mapper.carsel(pcode);
			for(int i=0;i<list.size();i++) {
				
				list.get(i).setCnt(0);	
				System.out.println(list.get(i).getTitle()+" "+list.get(i).getCnt());
				//System.out.println( list.get(i).getPcode() );
				if(mapper.reserve_cnt(area,inday,outday,list.get(i).getPcode())==1) {
					list.get(i).setCnt(1);
					System.out.println(list.get(i).getTitle()+" "+list.get(i).getCnt());
				}
				
			}
			//model.addAttribute("cnt",cnt);
			model.addAttribute("list", list);
		}

		model.addAttribute("inday",inday);
		model.addAttribute("outday",outday);
		model.addAttribute("area",area);
		
		return "/reserve/reserve";
	}
	@Override
	public String reserve_next(HttpServletRequest request, Model model) {
		String pcode=request.getParameter("pcode");
		String inday=request.getParameter("inday");
		String outday=request.getParameter("outday");
		String area=request.getParameter("area");
		//ProductVO pvo=mapper.reserve_next(inday,outday,pcode);
		ProductVO pvo = mapper.reserve_next(pcode);
/*		String[] temp = inday.split("-");
		System.out.println(temp[0]+temp[1]+temp[2]);
		String[] temp1 = outday.split("-");
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, -(Integer.parseInt(temp[2])));
		*/
		System.out.println(inday);
		
       /* LocalDate startDate= LocalDate.parse("2022-10-10");
        LocalDate endDate= LocalDate.parse("2022-10-17");
        //long totaldate=startDate.until(endDate, ChronoUnit.DAYS);
        System.out.println(startDate.until(endDate, ChronoUnit.DAYS));
        long totaldate = startDate.until(endDate, ChronoUnit.DAYS);*/
		String[] temp = inday.split("-");
		LocalDate sday = LocalDate.of(Integer.parseInt(temp[0]), Integer.parseInt(temp[1]), Integer.parseInt(temp[2]));
		String[] temp1 = outday.split("-");
		LocalDate oday = LocalDate.of(Integer.parseInt(temp1[0]), Integer.parseInt(temp1[1]), Integer.parseInt(temp1[2]));
		long totaldate = sday.until(oday,ChronoUnit.DAYS);
		//System.out.println(day);
		pvo.setInday(inday);
		pvo.setOutday(outday);
		pvo.setArea(area);
		pvo.setTotaldate(totaldate);
		model.addAttribute("pvo",pvo);
		return "/reserve/reserve_next";
	}

	@Override
	public String reserve_ok(ReserveVO rvo,HttpSession session ) 
	{  
		
		rvo.setUserid(session.getAttribute("userid").toString());
		mapper.reserve_ok(rvo);	
		
		return "redirect:/reserve/reserve_view";
	}
	@Override
	public String reserve_view(HttpServletRequest request,ReserveVO rvo, Model model,HttpSession session) {
      
		model.addAttribute("rvo",mapper.reserve_view() );
		
		return "/reserve/reserve_view";
	}
	@Override
	public String change_state(HttpServletRequest request) {
		String id=request.getParameter("id");
		String state=request.getParameter("state");
		mapper.change_state(id,state);
		return "redirect:/reserve/reserve_view";
	}

}
