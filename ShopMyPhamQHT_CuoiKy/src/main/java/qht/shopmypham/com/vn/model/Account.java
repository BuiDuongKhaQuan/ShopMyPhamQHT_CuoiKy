package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class Account implements Serializable {
    int idA;
    String user;
    String pass;
    String fullName;
    String phone;
    String address;
    String email;
    String img;
    int orderManage, infoCompanyManage, productManage, accountManage, blogManage, contactManage, subscibeManage, status, faqsManage;

    public Account() {
    }

    public Account(int idA, String user, String pass, String fullName, String phone, String address, String email, String img, int orderManage, int infoCompanyManage, int productManage, int accountManage, int blogManage, int contactManage, int subscibeManage, int status, int faqsManage) {
        this.idA = idA;
        this.user = user;
        this.pass = pass;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.img = img;
        this.orderManage = orderManage;
        this.infoCompanyManage = infoCompanyManage;
        this.productManage = productManage;
        this.accountManage = accountManage;
        this.blogManage = blogManage;
        this.contactManage = contactManage;
        this.subscibeManage = subscibeManage;
        this.status = status;
        this.faqsManage = faqsManage;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getOrderManage() {
        return orderManage;
    }

    public void setOrderManage(int orderManage) {
        this.orderManage = orderManage;
    }

    public int getInfoCompanyManage() {
        return infoCompanyManage;
    }

    public void setInfoCompanyManage(int infoCompanyManage) {
        this.infoCompanyManage = infoCompanyManage;
    }

    public int getProductManage() {
        return productManage;
    }

    public void setProductManage(int productManage) {
        this.productManage = productManage;
    }

    public int getAccountManage() {
        return accountManage;
    }

    public void setAccountManage(int accountManage) {
        this.accountManage = accountManage;
    }

    public int getBlogManage() {
        return blogManage;
    }

    public void setBlogManage(int blogManage) {
        this.blogManage = blogManage;
    }

    public int getContactManage() {
        return contactManage;
    }

    public void setContactManage(int contactManage) {
        this.contactManage = contactManage;
    }

    public int getSubscibeManage() {
        return subscibeManage;
    }

    public void setSubscibeManage(int subscibeManage) {
        this.subscibeManage = subscibeManage;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getFaqsManage() {
        return faqsManage;
    }

    public void setFaqsManage(int faqsManage) {
        this.faqsManage = faqsManage;
    }
}
