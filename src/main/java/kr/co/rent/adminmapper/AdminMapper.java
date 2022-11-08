package kr.co.rent.adminmapper;

import java.util.ArrayList;

import kr.co.rent.adminvo.DaeVO;
import kr.co.rent.adminvo.JungVO;
import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.adminvo.SoVO;



public interface AdminMapper {
	
	public ArrayList<DaeVO> daelist();
	public ArrayList<JungVO> getJung(String daecode);
	public void dae_ok(DaeVO dvo);
	public void jung_ok(JungVO jvo);
	public void so_ok(SoVO svo);
	public String getSo(String daejung);
	
	public ArrayList<DaeVO> code();
	public ArrayList<JungVO> getjungcode(String daecode);
	public ArrayList<SoVO> getsocode(String daejung);
	public Integer getbunho(String code);
	
	public void product_ok(ProductVO pvo);
}
