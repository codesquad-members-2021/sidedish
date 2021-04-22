package develop.baminchan.entity.banchan;

import org.springframework.data.relational.core.mapping.Embedded;

public class BanchanDetail {
    private String hash;

    @Embedded.Nullable
    private BanchanDetailData banchanDetailData;

    public BanchanDetail(String hash, BanchanDetailData banchanDetailData) {
        this.hash = hash;
        this.banchanDetailData = banchanDetailData;
    }

    public String getHash() {
        return hash;
    }

    public BanchanDetailData getData() {
        return banchanDetailData;
    }

    @Override
    public String toString() {
        return "BanchanDetail{" +
                "hash='" + hash + '\'' +
                ", data=" + banchanDetailData +
                '}';
    }
}

