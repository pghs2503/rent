package kr.co.rent.janggimapper;

import java.util.ArrayList;

import org.springframework.ui.Model;

import kr.co.rent.adminvo.ProductVO;

public interface JanggiMapper {

	public ArrayList<ProductVO> carsel(String pcode);

	public ProductVO pimg(String pcode);

	public ProductVO jang_confirm(String pcode);

}
