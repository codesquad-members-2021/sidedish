package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

public class Order {
    @Id
    private Long id;

    private String client_id;
    private String detail_hash;
    private int quantity;

    public Order(Long id, String client_id, String detail_hash, int quantity) {
        this.id = id;
        this.client_id = client_id;
        this.detail_hash = detail_hash;
        this.quantity = quantity;
    }

    public Long getId() {
        return id;
    }

    public String getClient_id() {
        return client_id;
    }

    public String getDetail_hash() {
        return detail_hash;
    }

    public int getQuantity() {
        return quantity;
    }
}
