package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Filter implements Serializable {
	int idF;
	String sortBy;
	int from, to;
	String color, trademark;
	public Filter(int idF, String sortBy, int from, int to, String color, String trademark) {
		super();
		this.idF = idF;
		this.sortBy = sortBy;
		this.from = from;
		this.to = to;
		this.color = color;
		this.trademark = trademark;
	}
	public Filter() {
		super();
	}
	public int getIdF() {
		return idF;
	}
	public void setIdF(int idF) {
		this.idF = idF;
	}
	public String getSortBy() {
		return sortBy;
	}
	public void setSortBy(String sortBy) {
		this.sortBy = sortBy;
	}
	public int getFrom() {
		return from;
	}
	public void setFrom(int from) {
		this.from = from;
	}
	public int getTo() {
		return to;
	}
	public void setTo(int to) {
		this.to = to;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTrademark() {
		return trademark;
	}
	public void setTrademark(String trademark) {
		this.trademark = trademark;
	}
	
}
