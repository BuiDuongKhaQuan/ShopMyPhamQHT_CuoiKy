package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.CheckOut;

import java.util.List;
import java.util.stream.Collectors;

public class CheckOutService {
    public static void addCheckOutByIdA(String phone, String address, String idPm, String name, String note, String idA, String orderDate) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO checkout(phone,address,idPm,idA,idStatus,idAdmin,orderDate" +
                                ", confirmDate, receivedDate,name,note) " +
                                "VALUES (?,?,?,?,0,null,?,null,null,?,?)")
                        .bind(0, phone)
                        .bind(1, address)
                        .bind(2, idPm)
                        .bind(3, idA)
                        .bind(4, orderDate)
                        .bind(5, name)
                        .bind(6, note)
                        .execute()

        );
    }

    public static List<CheckOut> getCheckOutByIdCk(String idCk) {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from checkout where idCk = ?")
                    .bind(0, idCk)
                    .mapToBean(CheckOut.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<CheckOut> getAllCheckOut() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from checkout").mapToBean(CheckOut.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static void editCheckOutByidCk(String idCk, String idStatus, String isAdmin, String orderDate, String confirmDate, String receivedDate) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update checkout set idStatus=?,isAdmin=?,orderDate=?,confirmDate = ?,receivedDate = ? where idCk = ?")
                        .bind(0, idStatus)
                        .bind(1, isAdmin)
                        .bind(2, orderDate)
                        .bind(3, confirmDate)
                        .bind(4, receivedDate)
                        .bind(5, idCk)
                        .execute()
        );
    }

    public static void confirmCheckOutByidCk(String idCk,String idAdmin, String confirmDate) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update checkout set idStatus=?,idAdmin=?, confirmDate = ? where idCk = ?")
                        .bind(0, "1")
                        .bind(1, idAdmin)
                        .bind(2, confirmDate)
                        .bind(3, idCk)
                        .execute()
        );
    }
    public static void completeCheckOutByidCk(String idCk,String idAdmin, String receivedDate) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update checkout set idStatus=?,idAdmin=?, receivedDate = ? where idCk = ?")
                        .bind(0, "3")
                        .bind(1, idAdmin)
                        .bind(2, receivedDate)
                        .bind(3, idCk)
                        .execute()
        );
    }
    public static void canceCheckOutByidCk(String idCk,String idAdmin) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update checkout set idStatus=?,idAdmin=? where idCk = ?")
                        .bind(0, "5")
                        .bind(1, idAdmin)
                        .bind(2, idCk)
                        .execute()
        );
    }
    public static void addProductToCheckOut(String idp, String quantity, String ida) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO listproductbycheckout(idP,quantity,idA) " +
                                "VALUES (?,?,?)")
                        .bind(0, idp).bind(1, quantity).bind(2, ida)
                        .execute()
        );
    }


    public static void deleteCheckOutById(String idCk) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from checkout where idCk = ?")
                        .bind(0, idCk)
                        .execute()
        );
    }

    public static void main(String[] args) {
    }
}


