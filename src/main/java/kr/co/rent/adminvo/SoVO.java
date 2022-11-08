package kr.co.rent.adminvo;

public class SoVO {
	
	private int id;
	private String title,code,daejung;
	
	private String dae,jung; // 대중코드 합치기용
	public String getDae() {
		return dae;
	}
	public void setDae(String dae) {
		this.dae = dae;
	}
	public String getJung() {
		return jung;
	}
	public void setJung(String jung) {
		this.jung = jung;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDaejung() {
		return daejung;
	}
	public void setDaejung(String daejung) {
		this.daejung = daejung;
	}
	
}
