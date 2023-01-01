package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Review implements Serializable {
    int idR, idP, idA;
    String infomation, email;
    double star;

    public Review(int idR, int idP, int idA, String infomation, double star) {
        super();
        this.idR = idR;
        this.idP = idP;
        this.idA = idA;
        this.infomation = infomation;
        this.star = star;
    }

    public Review() {
        super();
    }

    public int getIdR() {
        return idR;
    }

    public void setIdR(int idR) {
        this.idR = idR;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getInfomation() {
        return infomation;
    }

    public void setInfomation(String infomation) {
        this.infomation = infomation;
    }

    public double getStar() {
        return star;
    }

    public void setStar(double star) {
        this.star = star;
    }

}
