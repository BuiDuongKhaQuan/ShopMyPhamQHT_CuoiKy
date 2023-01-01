package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.model.Trademark;

import java.util.stream.Collectors;

public class TrademarkService {

    public static Trademark getTrademarkByIdT(String idTrademark) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM trademark where idTrademark = ?")
                        .bind(0, idTrademark)
                        .mapToBean(Trademark.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static void editTrademarkById(String idTrademark, String logo, String name, String address, String phone) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update trademark set logo = ?,name = ?,address = ?,phone = ? where idTrademark = ?")
                        .bind(0, logo)
                        .bind(1, name)
                        .bind(2, address)
                        .bind(3, phone)
                        .bind(4, idTrademark)
                        .execute()
        );
    }

    public static void addTrademark(String logo, String name, String address, String phone) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into trademark(logo,name,address,phone) values (?,?,?,?)")
                        .bind(0, logo)
                        .bind(1, name)
                        .bind(2, address)
                        .bind(3, phone)
                        .execute()
        );
    }

    public static void deleteTrademarkById(String idTrademark) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from trademark where idTrademark = ?")
                        .bind(0, idTrademark)
                        .execute()
        );
    }

    public static Slider getTrademarkById(String idTrademark) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM trademark where idTrademark = ?")
                        .bind(0, idTrademark)
                        .mapToBean(Slider.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }
}
