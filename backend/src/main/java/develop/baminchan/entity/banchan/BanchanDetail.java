package develop.baminchan.entity.banchan;

import org.springframework.data.relational.core.mapping.Embedded;

public class BanchanDetail {
    private String hash;

    @Embedded.Nullable
    private Data data;

    public BanchanDetail(String hash, Data data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public Data getData() {
        return data;
    }

    @Override
    public String toString() {
        return "BanchanDetail{" +
                "hash='" + hash + '\'' +
                ", data=" + data +
                '}';
    }
}

