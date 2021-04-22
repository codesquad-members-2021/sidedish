package develop.baminchan.dto.banchan;

import develop.baminchan.entity.banchan.BanchanDetail;

import static develop.baminchan.dto.util.StringConvertor.convertToSet;

public class BanchanDetailDto {
    private String hash;
    private DataDto data;

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.hash = banchanDetail.getHash();
        data = new DataDto.DataDtoBuilder()
                .setTop_image(banchanDetail.getData().getTop_image())
                .setThumb_images(convertToSet(banchanDetail.getData().getThumb_images()))
                .build();
    }

    public String getHash() {
        return hash;
    }

    public DataDto getData() {
        return data;
    }

    @Override
    public String toString() {
        return "BanchanDetailDto{" +
                "hash='" + hash + '\'' +
                ", data=" + data +
                '}';
    }
}
