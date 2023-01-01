package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class IsPromotion implements Serializable {
	int isPro;
	String start_date, end_date;
	public IsPromotion(int isPro, String start_date, String end_date) {
		super();
		this.isPro = isPro;
		this.start_date = start_date;
		this.end_date = end_date;
	}
	public IsPromotion() {
		super();
	}
	public int getIsPro() {
		return isPro;
	}
	public void setIsPro(int isPro) {
		this.isPro = isPro;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
	
}
