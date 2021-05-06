package develop.baminchan.entity.banchan;

import org.springframework.data.relational.core.mapping.Embedded;

public class BanchanDetail {
    private String detail_hash;

    @Embedded.Nullable
    private BanchanDetailData banchanDetailData;

    public BanchanDetail(String detail_hash, BanchanDetailData banchanDetailData) {
        this.detail_hash = detail_hash;
        this.banchanDetailData = banchanDetailData;
    }

    public String getDetail_hash() {
        return detail_hash;
    }

    public BanchanDetailData getBanchanDetailData() {
        return banchanDetailData;
    }

    public BanchanDetailData getData() {
        return banchanDetailData;
    }

    @Override
    public String toString() {
        return "BanchanDetail{" +
                "detail_hash='" + detail_hash + '\'' +
                ", banchanDetailData=" + banchanDetailData +
                '}';
    }
}

