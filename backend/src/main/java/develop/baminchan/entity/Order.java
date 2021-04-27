package develop.baminchan.entity;

import org.springframework.data.annotation.Id;

public class Order {
    @Id
    private Long id;

    private String github_id;
    private String detail_hash;
    private int qty;

    public Order(Long id, String github_id, String detail_hash, int qty) {
        this.id = id;
        this.github_id = github_id;
        this.detail_hash = detail_hash;
        this.qty = qty;
    }

    public Long getId() {
        return id;
    }

    public String getGithub_id() {
        return github_id;
    }

    public String getDetail_hash() {
        return detail_hash;
    }

    public int getQty() {
        return qty;
    }
}
