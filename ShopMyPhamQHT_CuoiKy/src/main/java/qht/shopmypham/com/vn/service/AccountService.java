package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Account;

import java.util.List;
import java.util.stream.Collectors;

public class AccountService {
    public static void editProfileAcountById(String pass, String email,
                                             String phone, String fullName, String address, String id) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set pass =?," +
                                "email = ?,phone =?,img=null,fullName=?,address =? where idA = ?")
                        .bind(0, pass)
                        .bind(1, email)
                        .bind(2, phone)
                        .bind(3, fullName)
                        .bind(4, address)
                        .bind(5, id)
                        .execute()
        );
    }

    public static List<Account> getAllAccount() {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account")
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static Account getAccountById(String aid) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account where idA =?")
                        .bind(0, aid)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList()).get(0)
        );

    }

    public static Account getAccountByUserAndEmail(String user, String email) {
        List<Account> accountList = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account where user =? and email = ?")
                        .bind(0, user)
                        .bind(1, email)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accountList.size() == 0) return null;
        return accountList.get(0);
    }

    public static List<Account> getAllAccountByDeparment(String isAdmin) {
        return JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE isAdmin = ?")
                        .bind(0, isAdmin)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );

    }

    public static void editAcountById(String fullName, String email, String address, String phone, String img, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set fullName = ?,email =?, address=?,phone=? " +
                                ",img = ? where idA= ?")
                        .bind(0, fullName)
                        .bind(1, email)
                        .bind(2, address)
                        .bind(3, phone)
                        .bind(4, img)
                        .bind(5, idA)
                        .execute()
        );
    }

    public static void editAcountOrderManageById(String orderManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set orderManage = ? where idA= ?")
                        .bind(0, orderManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountInfoCompanyManageById(String infoCompanyManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set infoCompanyManage = ? where idA= ?")
                        .bind(0, infoCompanyManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountProductManageById(String productManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set productManage = ? where idA= ?")
                        .bind(0, productManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountAccountManageById(String accountManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set accountManage = ? where idA= ?")
                        .bind(0, accountManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountBlogManageById(String blogManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set blogManage = ? where idA= ?")
                        .bind(0, blogManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountContactManageById(String contactManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set contactManage = ? where idA= ?")
                        .bind(0, contactManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountSubscibeManageById(String subscibeManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set subscibeManage = ? where idA= ?")
                        .bind(0, subscibeManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void editAcountFaqsManageById(String faqsManage, String idA) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set faqsManage = ? where idA= ?")
                        .bind(0, faqsManage)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void resetPasswordAccountById(String idA, String pass) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("update account set pass = ? where idA= ?")
                        .bind(0, pass)
                        .bind(1, idA)
                        .execute()
        );
    }

    public static void deleteAccountById(String idA) {

        JDBiConnector.me().withHandle(h ->
                h.createUpdate("delete from account where idA = ?")
                        .bind(0, idA)
                        .execute()
        );
    }

    public static void main(String[] args) {
    }
}
