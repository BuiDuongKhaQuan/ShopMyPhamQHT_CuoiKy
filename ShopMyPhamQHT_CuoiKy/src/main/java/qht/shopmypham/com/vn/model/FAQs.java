package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class FAQs implements Serializable {
	int idF;
	int idA;
	String question;
	String answer;
	public FAQs(int idF, int idA, String question, String answer) {
		super();
		this.idF = idF;
		this.idA = idA;
		this.question = question;
		this.answer = answer;
	}
	public FAQs() {
		super();
	}
	public int getIdF() {
		return idF;
	}
	public void setIdF(int idF) {
		this.idF = idF;
	}
	public int getIdA() {
		return idA;
	}
	public void setIdA(int idA) {
		this.idA = idA;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
}
