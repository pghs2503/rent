package kr.co.rent.infomapper;

import java.util.ArrayList;

import org.springframework.ui.Model;

import kr.co.rent.infovo.InfoVO;

public interface InfoMapper {

	public ArrayList<InfoVO> counsel_list(Model model);

	public InfoVO counsel_content(String id);

	public void counsel_write_ok(InfoVO ivo);

	public void counsel_delete(String id);


}
