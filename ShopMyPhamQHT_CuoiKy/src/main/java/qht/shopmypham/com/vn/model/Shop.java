package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Shop implements Serializable {
    int idS;
    String shopLogo, aboutShop, designerBy, textInHelp, shopName, address, phone, email;

    public Shop() {
    }

    public Shop(int idS, String shopLogo, String aboutShop, String designerBy, String textInHelp, String shopName, String address, String phone, String email) {
        this.idS = idS;
        this.shopLogo = shopLogo;
        this.aboutShop = aboutShop;
        this.designerBy = designerBy;
        this.textInHelp = textInHelp;
        this.shopName = shopName;
        this.address = address;
        this.phone = phone;
        this.email = email;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "idS=" + idS +
                ", shopLogo='" + shopLogo + '\'' +
                ", aboutShop='" + aboutShop + '\'' +
                ", designerBy='" + designerBy + '\'' +
                ", textInHelp='" + textInHelp + '\'' +
                ", shopName='" + shopName + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public int getIdS() {
        return idS;
    }

    public void setIdS(int idS) {
        this.idS = idS;
    }

    public String getShopLogo() {
        return shopLogo;
    }

    public void setShopLogo(String shopLogo) {
        this.shopLogo = shopLogo;
    }

    public String getAboutShop() {
        return aboutShop;
    }

    public void setAboutShop(String aboutShop) {
        this.aboutShop = aboutShop;
    }

    public String getDesignerBy() {
        return designerBy;
    }

    public void setDesignerBy(String designerBy) {
        this.designerBy = designerBy;
    }

    public String getTextInHelp() {
        return textInHelp;
    }

    public void setTextInHelp(String textInHelp) {
        this.textInHelp = textInHelp;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
