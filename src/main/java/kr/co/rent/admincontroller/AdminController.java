package kr.co.rent.admincontroller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.co.rent.adminservice.AdminService;
import kr.co.rent.adminvo.DaeVO;
import kr.co.rent.adminvo.JungVO;
import kr.co.rent.adminvo.SoVO;

@Controller
public class AdminController {

	@Autowired
	@Qualifier("ads")
	private AdminService service;
	
	@RequestMapping("/admin/pcode") // pcode 생성
	public String pcode(Model model) {
		return service.pcode(model); 
	}
	
	@RequestMapping("/admin/dae_ok") // pcode 생성페이지 dae 코드 db입력
	public String dae_ok(DaeVO dvo) {
		return service.dae_ok(dvo);
	}
	
	@RequestMapping("/admin/jung_ok") // pcode 생성페이지 jung 코드 db입력
	public String jung_ok(JungVO jvo) {
		return service.jung_ok(jvo);
	}
	
	@RequestMapping("/admin/getJung") // pcode 생성페이지 중코드 구하기
	public void getJung(HttpServletRequest request, PrintWriter out) {
		service.getJung(request, out);
	}
	
	@RequestMapping("/admin/so_ok") // pcode 페이지 so 코드 db입력
	public String so_ok(SoVO svo) {
		return service.so_ok(svo);
	}
	
	@RequestMapping("/admin/getSo") // pcode 페이지 so 코드 입력부분 daejung 코드 구하기
	public void getSO(HttpServletRequest request, PrintWriter out) {
		service.getSo(request, out);
	}
	
	@RequestMapping("/admin/code") // code 차등록페이지
	public String code(Model model) {
		return service.code(model);
	}
	
	@RequestMapping("/admin/getjungcode") // code 페이지 jung 코드 구하기
	public void getjungcode(HttpServletRequest request, PrintWriter out) {
		service.getjungcode(request, out);
	}
	
	@RequestMapping("/admin/getsocode") // code 페이지 so 코드 구하기
	public void getsocode(HttpServletRequest request, PrintWriter out) {
		service.getsocode(request, out);
	}

	@RequestMapping("/admin/getbunho") // code 페이지 뒷번호 구하기
	public void getbunho(HttpServletRequest request, PrintWriter out) {
		service.getbunho(request, out);
	}
	
	@RequestMapping("/admin/code_ok") // pcode 생성 완료
	public String code_ok(HttpServletRequest request) throws Exception {
		System.out.println(request.getParameter("pcode"));
		System.out.println(request.getParameter("title"));
		return service.code_ok(request);
	}
}
