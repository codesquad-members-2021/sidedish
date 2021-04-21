package develop.baminchan.dto.banchan;

import develop.baminchan.entity.banchan.BanchanDetail;

public class BanchanDetailDto {
    private String test;

    public BanchanDetailDto(String test) {
        this.test = test;
    }

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.test = banchanDetail.getTest();
    }

    public String getTest() {
        return test;
    }

    @Override
    public String toString() {
        return "BanchanDetailDto{" +
                "test='" + test + '\'' +
                '}';
    }

}

