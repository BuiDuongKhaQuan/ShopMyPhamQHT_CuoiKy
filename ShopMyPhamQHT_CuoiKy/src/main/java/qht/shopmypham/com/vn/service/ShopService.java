package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.BlogOffer;
import qht.shopmypham.com.vn.model.BranchShop;
import qht.shopmypham.com.vn.model.Offer;
import qht.shopmypham.com.vn.model.Shop;

import java.util.List;
import java.util.stream.Collectors;

public class ShopService {
    public static Shop getShop() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM shop")
                        .mapToBean(Shop.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static void editShop(String idS, String shopLogo, String shopName, String aboutShop, String address, String phone, String email,
                                String designerBy, String textInHelp) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update shop set shopLogo=?,  shopName=?,  aboutShop=?,  " +
                                "address=?,  phone=?,  email=?, designerBy=?,  textInHelp=? where idS = ?")
                        .bind(0, shopLogo)
                        .bind(1, shopName)
                        .bind(2, aboutShop)
                        .bind(3, address)
                        .bind(4, phone)
                        .bind(5, email)
                        .bind(6, designerBy)
                        .bind(7, textInHelp)
                        .bind(8, idS)
                        .execute()
        );
    }


    public static List<BranchShop> getAllBranchShop() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM branchshop")
                        .mapToBean(BranchShop.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static List<Offer> getOffer() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM offer")
                        .mapToBean(Offer.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static void editOfferByIdOf(String idOf, String name, String idC1, String idC2) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update offer set saleOff=?,  idC1=?,  idC2=? where idOf = ?")
                        .bind(0, name)
                        .bind(1, idC1)
                        .bind(2, idC2)
                        .bind(3, idOf)
                        .execute()
        );
    }

    public static BranchShop getBranchShopByIdB(String idB) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM branchshop where idB=?")
                        .bind(0, idB)
                        .mapToBean(BranchShop.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static void editBranchShopByIdB(String branchName, String branchAddress, String branchPhone,
                                           String branchEmail, String textSubrise, String idB) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update branchshop set branchName=?,  branchAddress=?, " +
                                " branchPhone=?, branchEmail=?,textSubrise=?, idS=? where idB = ?")
                        .bind(0, branchName)
                        .bind(1, branchAddress)
                        .bind(2, branchPhone)
                        .bind(3, branchEmail)
                        .bind(4, textSubrise)
                        .bind(5, "0")
                        .bind(6, idB)
                        .execute()
        );
    }

    public static void addBranchShop(String branchName, String branchAddress, String branchPhone,
                                     String branchEmail, String textSubrise) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into branchshop(branchName,branchAddress,branchPhone,branchEmail,textSubrise, idS) values (?,?,?,?,?,?)")
                        .bind(0, branchName)
                        .bind(1, branchAddress)
                        .bind(2, branchPhone)
                        .bind(3, branchEmail)
                        .bind(4, textSubrise)
                        .bind(5, "0")
                        .execute()
        );
    }

    public static void deleteBranchShopByIdB(String idB) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from branchshop where idB= ?")
                        .bind(0, idB)
                        .execute()
        );
    }

    public static void main(String[] args) {
        System.out.println(getShop());
    }
}
