package qht.shopmypham.com.vn.model;

import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;

public class Cart implements Serializable {
    private TreeMap<Product, Integer> listProduct;
    private long cartId;

    public Cart() {
        listProduct = new TreeMap<Product, Integer>();
        cartId = System.currentTimeMillis();
    }

    public Cart(TreeMap<Product, Integer> listProduct, long cartId) {
        this.listProduct = listProduct;
        this.cartId = cartId;
    }

    public TreeMap<Product, Integer> getListProduct() {
        return listProduct;
    }


    public void setListProduct(TreeMap<Product, Integer> listProduct) {
        this.listProduct = listProduct;
    }

    public long getCartId() {
        return cartId;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    @Override
    public String toString() {
        return "Cart{" + "listProduct=" + listProduct + ", cartId=" + cartId + '}';
    }

    public void insertToCart(Product p, int quantity) {
        boolean check = listProduct.containsKey(p);
        if (check) {
            int oldQuantity = listProduct.get(p);
            quantity += oldQuantity;
            listProduct.put(p, quantity);
        } else {
            listProduct.put(p, quantity);

        }
    }

    public void updateToCart(Product p, int quantity) {
        boolean check = listProduct.containsKey(p);
        if (check == true) {
            if (quantity <= 0) {
                listProduct.remove(p);
            }
        } else {
            listProduct.remove(p);
            listProduct.put(p, quantity);

        }
    }

    public void removeToCart(Product p, int quantity) {
        boolean check = listProduct.containsKey(p);
        if (check == true) {
            int oldQuantity = listProduct.get(p);
            quantity = oldQuantity - quantity;
            if (quantity <= 0) {
                listProduct.remove(p);
            } else {
                listProduct.remove(p);
                listProduct.put(p, quantity);
            }
        }
    }

    public void removeCart(Product p) {
        boolean check = listProduct.containsKey(p);
        if (check == true) listProduct.remove(p);
    }

    public int countItem() {
        int count = 0;
        for (Map.Entry<Product, Integer> list : listProduct.entrySet()) {
            count += list.getValue();
        }
        return count;
    }

    public double total() {
        double total = 0;
        for (Map.Entry<Product, Integer> list : listProduct.entrySet()) {
            total += list.getValue() * list.getKey().getPrice();
        }
        return total;
    }
}
