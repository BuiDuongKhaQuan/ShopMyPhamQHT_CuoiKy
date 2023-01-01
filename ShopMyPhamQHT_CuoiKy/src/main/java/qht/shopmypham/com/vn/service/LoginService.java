package qht.shopmypham.com.vn.service;

import qht.shopmypham.com.vn.db.JDBiConnector;
import qht.shopmypham.com.vn.model.Account;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class LoginService {

    public static Account getAccout(String user, String pass) {
        List<Account> accounts = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE user = ? and pass =?")
                        .bind(0, user).bind(1, pass)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (accounts.size() == 0) return null;
        return accounts.get(0);
    }

    public static List<String> getUserAccount() {
        List<String> listUser = new ArrayList<>();
        List<Account> acc = JDBiConnector.me().withHandle(handle -> {
            return handle.createQuery("select * from account").mapToBean(Account.class)
                    .stream().collect(Collectors.toList());
        });
        for (Account user : acc) {
            listUser.add(user.getUser());
        }
        return listUser;
    }

    public static Account checkUser(String user) {
        List<Account> listAccount = JDBiConnector.me().withHandle(h ->
                h.createQuery("SELECT * FROM account WHERE user = ?")
                        .bind(0, user)
                        .mapToBean(Account.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (listAccount.size() == 0) return null;
        return listAccount.get(0);
    }

    public static void signUp(String user, String pass) {
        JDBiConnector.me().withHandle(h ->
                h.createUpdate("INSERT INTO account(user,pass,fullName,email,address,phone,img," +
                                "status,orderManage,infoCompanyManage,productManage,accountManage,blogManage,contactManage,subscibeManage,faqsManage)" +
                                "VALUES (?,?,null,null,null,null,null,1,0,0,0,0,0,0,0,0)")
                        .bind(0, user).bind(1, pass)
                        .execute()
        );
    }


    public static void main(String[] args) {
        System.out.println(checkUser("tran111"));
//        "INSERT INTO account(user,pass,fullName,email,address,phone,img,isadmin) " +
//                "VALUES (?,?,null,null,null,null,null,2)")
    }

}
