package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Help implements Serializable{
	int idH;
	int idA;
	String content;
	public Help(int idH, int idA, String content) {
		super();
		this.idH = idH;
		this.idA = idA;
		this.content = content;
	}
	public Help() {
		super();
	}
	public int getIdH() {
		return idH;
	}
	public void setIdH(int idH) {
		this.idH = idH;
	}
	public int getIdA() {
		return idA;
	}
	public void setIdA(int idA) {
		this.idA = idA;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
