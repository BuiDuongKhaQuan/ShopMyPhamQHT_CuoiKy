package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Offer implements Serializable {
    int idOf, idC1, idC2;
    String saleOff;

    public Offer() {
    }

    public Offer(int idOf, int idC1, int idC2, String saleOff) {
        this.idOf = idOf;
        this.idC1 = idC1;
        this.idC2 = idC2;
        this.saleOff = saleOff;
    }

    @Override
    public String toString() {
        return "Offer{" +
                "idOf=" + idOf +
                ", idC1=" + idC1 +
                ", idC2=" + idC2 +
                ", saleOff='" + saleOff + '\'' +
                '}';
    }

    public int getIdOf() {
        return idOf;
    }

    public void setIdOf(int idOf) {
        this.idOf = idOf;
    }

    public int getIdC1() {
        return idC1;
    }

    public void setIdC1(int idC1) {
        this.idC1 = idC1;
    }

    public int getIdC2() {
        return idC2;
    }

    public void setIdC2(int idC2) {
        this.idC2 = idC2;
    }

    public String getSaleOff() {
        return saleOff;
    }

    public void setSaleOff(String saleOff) {
        this.saleOff = saleOff;
    }
}
