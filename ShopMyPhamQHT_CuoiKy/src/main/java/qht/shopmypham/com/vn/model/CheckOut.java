package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class CheckOut implements Serializable {
    int idCk;
    String phone;
    String address;
    int idPm;
    int idA;
    int idStatus;
    int idAdmin;
    String orderDate;
    String confirmDate;
    String receivedDate;
    String name;
    String note;

    public CheckOut(int idCk, String phone, String address, int idPm, int idA, int idStatus, int idAdmin,
                    String orderDate, String confirmDate, String receivedDate, String name, String note) {
        super();
        this.idCk = idCk;
        this.phone = phone;
        this.address = address;
        this.idPm = idPm;
        this.idA = idA;
        this.idStatus = idStatus;
        this.idAdmin = idAdmin;
        this.orderDate = orderDate;
        this.confirmDate = confirmDate;
        this.receivedDate = receivedDate;
        this.name = name;
        this.note = note;

    }

    public CheckOut() {
        super();
    }

    public int getIdCk() {
        return idCk;
    }

    public void setIdCk(int idCk) {
        this.idCk = idCk;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIdPm() {
        return idPm;
    }

    public void setIdPm(int idPm) {
        this.idPm = idPm;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public int getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(int idStatus) {
        this.idStatus = idStatus;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getConfirmDate() {
        return confirmDate;
    }

    public void setConfirmDate(String confirmDate) {
        this.confirmDate = confirmDate;
    }

    public String getReceivedDate() {
        return receivedDate;
    }

    public void setReceivedDate(String receivedDate) {
        this.receivedDate = receivedDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

}
