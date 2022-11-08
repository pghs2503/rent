package kr.co.rent.adminservice;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.rent.adminvo.DaeVO;
import kr.co.rent.adminvo.JungVO;
import kr.co.rent.adminvo.SoVO;



public interface AdminService {
	
	public String pcode(Model model);
	public String dae_ok(DaeVO dvo);
	public String jung_ok(JungVO jvo);
	public void getJung(HttpServletRequest request, PrintWriter out);
	public String so_ok(SoVO svo);
	public void getSo(HttpServletRequest request, PrintWriter out);
	
	public String code(Model model);
	public void getjungcode(HttpServletRequest request, PrintWriter out);
	public void getsocode(HttpServletRequest request, PrintWriter out);
	public void getbunho(HttpServletRequest request, PrintWriter out);
	
	public String code_ok(HttpServletRequest request) throws Exception;
}
