package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class BranchShop implements Serializable {
    int idB, idS;
    String branchName, branchAddress, branchPhone, branchEmail, textSubrise;

    public BranchShop() {
    }

    public BranchShop(int idB, int idS, String branchName, String branchAddress, String branchPhone, String branchEmail, String textSubrise) {
        this.idB = idB;
        this.idS = idS;
        this.branchName = branchName;
        this.branchAddress = branchAddress;
        this.branchPhone = branchPhone;
        this.branchEmail = branchEmail;
        this.textSubrise = textSubrise;
    }

    @Override
    public String toString() {
        return "BranchShop{" +
                "idB=" + idB +
                ", idS=" + idS +
                ", branchName='" + branchName + '\'' +
                ", branchAddress='" + branchAddress + '\'' +
                ", branchPhone='" + branchPhone + '\'' +
                ", branchEmail='" + branchEmail + '\'' +
                ", textSubrise='" + textSubrise + '\'' +
                '}';
    }

    public int getIdB() {
        return idB;
    }

    public void setIdB(int idB) {
        this.idB = idB;
    }

    public int getIdS() {
        return idS;
    }

    public void setIdS(int idS) {
        this.idS = idS;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getBranchAddress() {
        return branchAddress;
    }

    public void setBranchAddress(String branchAddress) {
        this.branchAddress = branchAddress;
    }

    public String getBranchPhone() {
        return branchPhone;
    }

    public void setBranchPhone(String branchPhone) {
        this.branchPhone = branchPhone;
    }

    public String getBranchEmail() {
        return branchEmail;
    }

    public void setBranchEmail(String branchEmail) {
        this.branchEmail = branchEmail;
    }

    public String getTextSubrise() {
        return textSubrise;
    }

    public void setTextSubrise(String textSubrise) {
        this.textSubrise = textSubrise;
    }
}
