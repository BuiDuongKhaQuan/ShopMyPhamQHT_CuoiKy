package qht.shopmypham.com.vn.model;

public class ListProductByCheckOut {
    int idLc;
    int idP;
    int idA;
    int quantity;


    public ListProductByCheckOut() {
        super();
    }

    public ListProductByCheckOut(int idLc, int idP, int idA, int quantity) {
        this.idLc = idLc;
        this.idP = idP;
        this.idA = idA;
        this.quantity = quantity;
    }

    public int getIdLc() {
        return idLc;
    }

    public void setIdLc(int idLc) {
        this.idLc = idLc;
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

    public void setIdA(int idCart) {
        this.idA = idA;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
