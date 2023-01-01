package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class TypeNotification implements Serializable{
	int idTypeN;
	String notiName;
	public TypeNotification(int idTypeN, String notiName) {
		super();
		this.idTypeN = idTypeN;
		this.notiName = notiName;
	}
	public TypeNotification() {
		super();
	}
	public int getIdTypeN() {
		return idTypeN;
	}
	public void setIdTypeN(int idTypeN) {
		this.idTypeN = idTypeN;
	}
	public String getNotiName() {
		return notiName;
	}
	public void setNotiName(String notiName) {
		this.notiName = notiName;
	}
	
}
