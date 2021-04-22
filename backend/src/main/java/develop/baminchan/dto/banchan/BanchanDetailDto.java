package develop.baminchan.dto.banchan;

import develop.baminchan.entity.banchan.Data;
import develop.baminchan.entity.banchan.BanchanDetail;

public class BanchanDetailDto {
    private String hash;
    private Data data;

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.hash = banchanDetail.getHash();
        this.data = banchanDetail.getData();
    }

    public BanchanDetailDto(String hash, Data data) {
        this.hash = hash;
        this.data = data;
    }

    public String getHash() {
        return hash;
    }

    public Data getData() {
        return data;
    }
}
