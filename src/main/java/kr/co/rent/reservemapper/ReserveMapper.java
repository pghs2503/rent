package kr.co.rent.reservemapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import kr.co.rent.adminvo.ProductVO;
import kr.co.rent.membervo.MemberVO;
import kr.co.rent.reservevo.ReserveVO;

public interface ReserveMapper {

	public ArrayList<ProductVO> carsel(String pcode);
	//public ProductVO reserve_next(String inday, String outday, String pcode);
	public ProductVO reserve_next(String pcode);
    public MemberVO getmember(String userid);
    public void reserve_ok(ReserveVO rvo);
    public ReserveVO reserve_view();
    
    public int reserve_cnt(String area,String inday, String outday, String pcode);
    public void change_state(String id,String state);
}
