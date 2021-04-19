package develop.baminchan.entity;

public class Banchan {
    private Long id;
    private String detailHash;
    private String image;
    private String alt;
    private String[] deliveryType;
    private String title;
    private String description;
    private String nPrice;
    private String sPrice;
    private String[] badge;

    public Banchan(Long id, String detailHash, String image, String alt, String[] deliveryType, String title, String description, String nPrice, String sPrice, String[] badge) {
        this.id = id;
        this.detailHash = detailHash;
        this.image = image;
        this.alt = alt;
        this.deliveryType = deliveryType;
        this.title = title;
        this.description = description;
        this.nPrice = nPrice;
        this.sPrice = sPrice;
        this.badge = badge;
    }

    public Long getId() {
        return id;
    }

    public String getDetailHash() {
        return detailHash;
    }

    public String getImage() {
        return image;
    }

    public String getAlt() {
        return alt;
    }

    public String[] getDeliveryType() {
        return deliveryType;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getnPrice() {
        return nPrice;
    }

    public String getsPrice() {
        return sPrice;
    }

    public String[] getBadge() {
        return badge;
    }
}
