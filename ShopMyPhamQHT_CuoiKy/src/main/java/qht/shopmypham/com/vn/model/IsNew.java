package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class IsNew implements Serializable{
	int isNew;
	String start_date;
	String end_date;
	public IsNew(int isNew, String start_date, String end_date) {
		super();
		this.isNew = isNew;
		this.start_date = start_date;
		this.end_date = end_date;
	}
	public IsNew() {
		super();
	}
	public int getIsNew() {
		return isNew;
	}
	public void setIsNew(int isNew) {
		this.isNew = isNew;
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
