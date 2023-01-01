package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.FAQs;

import java.util.List;
import java.util.stream.Collectors;

public class FAQsService {
    public static List<FAQs> getAllFQAs() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM faqs")
                        .mapToBean(FAQs.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static FAQs getFQAsById(String idF) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM faqs where idF=?")
                        .bind(0, idF)
                        .mapToBean(FAQs.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );
    }

    public static List<FAQs> getFQAsByQuestion(String ques) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM faqs where question LIKE ?")
                        .bind(0, "%" + ques + "%")
                        .mapToBean(FAQs.class)
                        .stream()
                        .collect(Collectors.toList())
        );
    }

    public static void addFQAs(String question, String answer, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("insert into faqs(idA,question,answer) values (?,?,?)")
                        .bind(0, idA)
                        .bind(1, question)
                        .bind(2, answer)
                        .execute()
        );
    }

    public static void editFQAsById(String idF, String question, String answer, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update faqs set idA=?,  question=?,  answer=? where idF = ?")
                        .bind(0, idA)
                        .bind(1, question)
                        .bind(2, answer)
                        .bind(3, idF)
                        .execute()
        );
    }

    public static void deleteFQAsById(String idF) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from faqs where idF = ?")
                        .bind(0, idF)
                        .execute()
        );
    }

}
