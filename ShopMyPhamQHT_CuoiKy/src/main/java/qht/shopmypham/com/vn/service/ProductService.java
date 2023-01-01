package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Product;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    public static List<Product> getAllProduct() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from product").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getTop10ProductByIdC(String idC) {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product where idC = ? LIMIT 10")
                    .bind(0, idC)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }


    public static List<Product> getTop12Product() {

        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT 12").mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static List<Product> getNextTop12Product(int amount) {
        return JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM product LIMIT ?,12")
                    .bind(0, amount)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList());
        });
    }

    public static Product getProductById(String pid) {
        List<Product> products = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE idP = ?")
                        .bind(0, pid)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return products.get(0);
    }

    public static List<Product> getProductByIdC(String cid) {
        List<Product> products = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE idC = ?")
                        .bind(0, cid)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return products;
    }

    public static List<Product> getTop5ProductByIdC(String cid) {
        List<Product> products = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE idC = ? LIMIT 5")
                        .bind(0, cid)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return products;
    }

    public static List<Product> getProductByPrice(String price1, String price2) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE price>? AND price<?")
                        .bind(0, price1)
                        .bind(1, price2)
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }


    public static List<Product> getProductSortDescendingByPrice() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product ORDER BY price")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }
    public static List<Product> getProductByIsNew() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product where isNew = 1")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }
    public static List<Product> getProductSortAscendingByPrice() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product ORDER BY price DESC ")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static List<Product> getProductByName(String name) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM product WHERE name LIKE ? ")
                        .bind(0, "%" + name + "%")
                        .mapToBean(Product.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static void deleteProductById(String pid) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from product where idP = ?")
                        .bind(0, pid)
                        .execute()
        );
    }

    public static void addProduct(String name, String img1, String img2, String img3, String img4,
                                  String isNew, String isPro, String idB, String idTrademark, String information,
                                  String idC, String price, String quantity) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into product(name,img1,img2,img3,img4,trademark,price,information,idC,quantity,isNew,isPro,idB) " +
                                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)")
                        .bind(0, name)
                        .bind(1, img1)
                        .bind(2, img2)
                        .bind(3, img3)
                        .bind(4, img4)
                        .bind(5, idTrademark)
                        .bind(6, price)
                        .bind(7, information)
                        .bind(8, idC)
                        .bind(9, quantity)
                        .bind(10, isNew)
                        .bind(11, isPro)
                        .bind(12, idB)
                        .execute()
        );
    }

    public static void editProductById(String name, String img1, String img2, String img3, String img4,
                                       String isNew, String isPro, String idB, String idTrademark, String information,
                                       String idC, String price, String quantity, String idP) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update product set name = ?,img1 =?,img2 =?,img3 =?,img4 =?,trademark= ?,price= ?,information= ?," +
                                "idC= ?,quantity= ?,isNew= ?,isPro= ?,idB= ? where idP = ?")
                        .bind(0, name)
                        .bind(1, img1)
                        .bind(2, img2)
                        .bind(3, img3)
                        .bind(4, img4)
                        .bind(5, idTrademark)
                        .bind(6, price)
                        .bind(7, information)
                        .bind(8, idC)
                        .bind(9, quantity)
                        .bind(10, isNew)
                        .bind(11, isPro)
                        .bind(12, idB)
                        .bind(13, idP)
                        .execute()
        );
    }

    public static void upQuantityProductById(String quantity, String idP) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update product set quantity= ? where idP = ?")
                        .bind(0, quantity)
                        .bind(1, idP)
                        .execute()
        );
    }

    public static void main(String[] args) {
    }
}
