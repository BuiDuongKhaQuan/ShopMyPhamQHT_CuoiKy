package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Notification implements Serializable{
	int idN, idTypeN, idA;
	String time;
	public Notification(int idN, int idTypeN, int idA, String time) {
		super();
		this.idN = idN;
		this.idTypeN = idTypeN;
		this.idA = idA;
		this.time = time;
	}
	public Notification() {
		super();
	}
	public int getIdN() {
		return idN;
	}
	public void setIdN(int idN) {
		this.idN = idN;
	}
	public int getIdTypeN() {
		return idTypeN;
	}
	public void setIdTypeN(int idTypeN) {
		this.idTypeN = idTypeN;
	}
	public int getIdA() {
		return idA;
	}
	public void setIdA(int idA) {
		this.idA = idA;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
