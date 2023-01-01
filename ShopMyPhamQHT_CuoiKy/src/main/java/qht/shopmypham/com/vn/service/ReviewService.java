package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Review;

import java.util.List;
import java.util.stream.Collectors;

public class ReviewService {
    public static void addReview(String idP, String idA, String information) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into review(idP,idA,infomation,star) VALUES (?,?,?,5)")
                        .bind(0, idP)
                        .bind(1, idA)
                        .bind(2, information)
                        .execute()
        );
    }

    public static List<Review> getAllReview(String idP) {
       return JDBiConnector.me().withHandle(h ->
                h.createQuery("select * from review where idP = ? ")
                        .bind(0, idP)
                        .mapToBean(Review.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }
}
