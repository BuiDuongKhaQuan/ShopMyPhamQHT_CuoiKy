package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Status implements Serializable{
	int idSt;
	String nameStatus;
	public Status(int idSt, String nameStatus) {
		super();
		this.idSt = idSt;
		this.nameStatus = nameStatus;
	}
	public Status() {
		super();
	}
	public int getIdSt() {
		return idSt;
	}
	public void setIdSt(int idSt) {
		this.idSt = idSt;
	}
	public String getNameStatus() {
		return nameStatus;
	}
	public void setNameStatus(String nameStatus) {
		this.nameStatus = nameStatus;
	}
	
}
