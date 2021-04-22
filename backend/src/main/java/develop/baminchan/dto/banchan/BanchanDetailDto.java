package develop.baminchan.dto.banchan;

import develop.baminchan.entity.banchan.BanchanDetail;

public class BanchanDetailDto {
    private String hash;

    public BanchanDetailDto(String hash) {
        this.hash = hash;
    }

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.hash = banchanDetail.getHash();
    }

    public String getHash() {
        return hash;
    }

    @Override
    public String toString() {
        return "BanchanDetailDto{" +
                "hash='" + hash + '\'' +
                '}';
    }

}

