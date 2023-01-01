package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Subscibe implements Serializable {
    int idSc;
    String nameQuest, emailQuest, time;


    public Subscibe() {
    }

    public Subscibe(int idSc, String nameQuest, String emailQuest, String time) {
        this.idSc = idSc;
        this.nameQuest = nameQuest;
        this.emailQuest = emailQuest;
        this.time = time;
    }

    public int getIdSc() {
        return idSc;
    }

    public void setIdSc(int idSc) {
        this.idSc = idSc;
    }

    public String getNameQuest() {
        return nameQuest;
    }

    public void setNameQuest(String nameQuest) {
        this.nameQuest = nameQuest;
    }

    public String getEmailQuest() {
        return emailQuest;
    }

    public void setEmailQuest(String emailQuest) {
        this.emailQuest = emailQuest;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
