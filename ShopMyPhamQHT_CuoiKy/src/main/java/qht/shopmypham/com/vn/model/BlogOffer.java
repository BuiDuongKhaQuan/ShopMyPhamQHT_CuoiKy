package qht.shopmypham.com.vn.model;

import java.io.Serializable;

public class BlogOffer implements Serializable {
    int idBv;
    int idA;
    String img;
    String topic;
    String link;

    public BlogOffer() {
    }

    public BlogOffer(int idBv, int idA, String img, String topic, String link) {
        this.idBv = idBv;
        this.idA = idA;
        this.img = img;
        this.topic = topic;
        this.link = link;
    }

    public int getIdBv() {
        return idBv;
    }

    public void setIdBv(int idBv) {
        this.idBv = idBv;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
