package kr.co.rent.adminservice;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.rent.adminmapper.AdminMapper;
import kr.co.rent.adminvo.DaeVO;
import kr.co.rent.adminvo.JungVO;
import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.adminvo.SoVO;

@Service
@Qualifier("ads")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper mapper;
	
	@Override
	public String pcode(Model model) {
		ArrayList<DaeVO> list = mapper.daelist();
		model.addAttribute("list",list);
		return "/admin/pcode";
	}
	
	
	@Override
	public String dae_ok(DaeVO dvo) {
		String dae = dvo.getCode();
		if (dae.length() < 2)
			dae = "0" + dae;
		dvo.setCode(dae);
		mapper.dae_ok(dvo);
		return "redirect:/admin/pcode";
	}

	@Override
	public String jung_ok(JungVO jvo) {
		String jung = jvo.getCode();
		if (jung.length() < 2)
			jung = "0" + jung;
		String str = null;
		switch (Integer.parseInt(jvo.getCode()) ) {
			case 1: str="준중형"; break; 
			case 2: str="중형차"; break; 
			case 3: str="대형차"; break;
			case 4: str="승합차"; break;
			case 5: str="전기차"; break;
		}
		jvo.setTitle(str);
		jvo.setCode(jung);
		mapper.jung_ok(jvo);
		return "redirect:/admin/pcode";
	}
	
	@Override
	public void getJung(HttpServletRequest request, PrintWriter out) {
		String daecode=request.getParameter("daecode");
		ArrayList<JungVO> list = mapper.getJung(daecode);
		String str="";
		for(int i=0;i<list.size();i++) {
			JungVO jvo = list.get(i);
			str=str+"<option value='"+jvo.getCode()+"'>"+URLEncoder.encode(jvo.getTitle())+"</option>";
		}
		
		out.print(str);
	}
	
	@Override
	public String so_ok(SoVO svo) {
		String daejung = svo.getDae() + svo.getJung();
		svo.setDaejung(daejung);
		String code = svo.getCode();
		if(code.length() < 2)
			code = "0"+code;
		svo.setCode(code);
		mapper.so_ok(svo);
		return "redirect:/admin/pcode";
	}
	
	@Override
	public void getSo(HttpServletRequest request, PrintWriter out) {
		String daejung = request.getParameter("daejung");
		int so = 0;
		if(mapper.getSo(daejung)!=null)
			so = Integer.parseInt(mapper.getSo(daejung));
		out.print(so);
	}
	
	@Override
	public String code(Model model) {
		model.addAttribute("list",mapper.code());
		return "/admin/code";
	}
	@Override
	public void getjungcode(HttpServletRequest request, PrintWriter out) {
		String daecode = request.getParameter("daecode");
		ArrayList<JungVO> list = mapper.getJung(daecode);
		String str="";
		for(int i=0;i<list.size();i++) {
			JungVO jvo = list.get(i);
			str=str+"<option value='"+jvo.getCode()+"'>"+URLEncoder.encode(jvo.getTitle())+"</option>";
		}
		out.print(str);
	}
	
	@Override
	public void getsocode(HttpServletRequest request, PrintWriter out) {
		String daejung = request.getParameter("daejung");
		ArrayList<SoVO> list = mapper.getsocode(daejung);
		String str="";
		for(int i=0;i<list.size();i++) {
			SoVO svo = list.get(i);
			str=str+"<option value='"+svo.getCode()+"'>"+URLEncoder.encode(svo.getTitle())+"</option>";
		}
		out.print(str);
	}
	
	@Override
	public void getbunho(HttpServletRequest request, PrintWriter out) {
		String code = request.getParameter("code");
		Integer bunho = mapper.getbunho(code);
		out.print(bunho);
	}
	
	@Override
	public String code_ok(HttpServletRequest request) throws Exception {
		
		//String path = request.getRealPath("resources/product");
		String path = "C:\\pp\\rent\\src\\main\\webapp\\resources\\product";
		
		int size = 1024*1024*30;
		ProductVO pvo = new ProductVO();
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
		
		System.out.println(multi.getParameter("pcode"));
		System.out.println(multi.getParameter("title"));
		pvo.setPcode(multi.getParameter("pcode"));
		pvo.setPimg(multi.getFilesystemName("pimg"));
		pvo.setCimg(multi.getFilesystemName("cimg"));
		pvo.setTitle(multi.getParameter("title"));			
		pvo.setMade(multi.getParameter("made"));
		pvo.setJong(multi.getParameter("carjong"));
		if(multi.getParameter("jangprice") != null)
			pvo.setJangprice(Integer.parseInt(multi.getParameter("jangprice")));
		if(multi.getParameter("danprice") != null)
			pvo.setDanprice(Integer.parseInt(multi.getParameter("danprice")));
		pvo.setCarnum(multi.getParameter("carnum"));
		pvo.setSeats(Integer.parseInt(multi.getParameter("seats")));
		pvo.setYear(multi.getParameter("year"));
		pvo.setOiljong(multi.getParameter("oiljong"));
		pvo.setYeonbi(multi.getParameter("yeonbi"));
		pvo.setGrade(Integer.parseInt(multi.getParameter("grade")));
		pvo.setWheel(Integer.parseInt(multi.getParameter("wheel")));
		pvo.setOutcolor(Integer.parseInt(multi.getParameter("outcolor")));
		pvo.setIncolor(Integer.parseInt(multi.getParameter("incolor")));
		pvo.setSunroof(multi.getParameter("sunroof"));
		pvo.setNav(multi.getParameter("nav"));
		pvo.setAuto(Integer.parseInt(multi.getParameter("auto")));
		
		
		/*try {
			MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
			System.out.println(   
					multi.getParameter("pcode")
					+" "+multi.getFilesystemName("pimg")
					+" "+multi.getFilesystemName("cimg")
					+" "+multi.getParameter("title")
					+" "+multi.getParameter("made")
					+" "+multi.getParameter("carjong")
					+" "+multi.getParameter("carnum")
					+" "+Integer.parseInt(multi.getParameter("seats"))
					+" "+multi.getParameter("year")
					+" "+multi.getParameter("oiljong")
					+" "+multi.getParameter("yeonbi")
					+" "+Integer.parseInt(multi.getParameter("grade"))
					+" "+Integer.parseInt(multi.getParameter("wheel"))
					+" "+Integer.parseInt(multi.getParameter("outcolor"))
					+" "+Integer.parseInt(multi.getParameter("incolor"))
					+" "+multi.getParameter("sunroof")
					+" "+multi.getParameter("nav")
					+" "+Integer.parseInt(multi.getParameter("auto"))			
					);
			
			
			
			pvo.setPcode(multi.getParameter("pcode"));
			pvo.setPimg(multi.getFilesystemName("pimg"));
			pvo.setCimg(multi.getFilesystemName("cimg"));
			pvo.setTitle(multi.getParameter("title"));			
			pvo.setMade(multi.getParameter("made"));
			pvo.setJong(multi.getParameter("carjong"));
			if(multi.getParameter("jangprice") != null)
				pvo.setJangprice(Integer.parseInt(multi.getParameter("jangprice")));
			if(multi.getParameter("danprice") != null)
				pvo.setDanprice(Integer.parseInt(multi.getParameter("danprice")));
			pvo.setCarnum(multi.getParameter("carnum"));
			pvo.setSeats(Integer.parseInt(multi.getParameter("seats")));
			pvo.setYear(multi.getParameter("year"));
			pvo.setOiljong(multi.getParameter("oiljong"));
			pvo.setYeonbi(multi.getParameter("yeonbi"));
			pvo.setGrade(Integer.parseInt(multi.getParameter("grade")));
			pvo.setWheel(Integer.parseInt(multi.getParameter("wheel")));
			pvo.setOutcolor(Integer.parseInt(multi.getParameter("outcolor")));
			pvo.setIncolor(Integer.parseInt(multi.getParameter("incolor")));
			pvo.setSunroof(multi.getParameter("sunroof"));
			pvo.setNav(multi.getParameter("nav"));
			pvo.setAuto(Integer.parseInt(multi.getParameter("auto")));
		} catch (Exception e) {
			//return "redirect:error";
		}*/
		// product테이블에 pvo에 있는 값들을 저장
		mapper.product_ok(pvo);					
		return "/admin/product_list";
	}
}
