package kr.co.rent.util;

public class RentUtil {

	public static String getH(int state) {
		String grade="";
		switch(state) {
			case 1 : grade= "기본"; break;
			case 2 : grade= "중급"; break;
			case 3 : grade= "고급"; break;
			case 4 : grade= "최고급"; break;
		}
		return grade;
	}

	public static String getK(int state) {
		String grade="";
		switch(state) {
			case 1 : grade= "기본"; break;
			case 2 : grade= "중급"; break;
			case 3 : grade= "고급"; break;
			case 4 : grade= "최고급"; break;
		}
		return grade;
	}
}
