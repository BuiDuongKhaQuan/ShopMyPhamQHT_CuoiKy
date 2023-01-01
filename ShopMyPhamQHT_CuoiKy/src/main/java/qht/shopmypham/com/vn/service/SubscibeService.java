package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Subscibe;

import java.util.List;
import java.util.stream.Collectors;

public class SubscibeService {
    public static List<Subscibe> getAllSubscibe() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM subscibe")
                        .mapToBean(Subscibe.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static Subscibe getSubscibeById(String idSc) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM subscibe where idSc=?")
                        .bind(0, idSc)
                        .mapToBean(Subscibe.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static Subscibe getSubscibeByEmail(String emailQuest) {
        List<Subscibe> subscibeList = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM subscibe where emailQuest=?")
                        .bind(0, emailQuest)
                        .mapToBean(Subscibe.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (subscibeList.size() == 0) return null;
        return subscibeList.get(0);
    }

    public static void addSubscibe(String nameQuest, String emailQuest, String time) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into subscibe(nameQuest,emailQuest,time) values (?,?,?)")
                        .bind(0, nameQuest)
                        .bind(1, emailQuest)
                        .bind(2, time)
                        .execute()
        );
    }

    public static void deleteSubscibeById(String idSc) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from subscibe where idSc = ?")
                        .bind(0, idSc)
                        .execute()
        );
    }

}
