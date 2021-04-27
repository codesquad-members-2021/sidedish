package develop.baminchan.dto.banchan;

import develop.baminchan.entity.banchan.BanchanDetail;

import static develop.baminchan.dto.util.StringConvertor.convertToSet;

public class BanchanDetailDto {
    private String hash;
    private BanchanDetailDataDto data;

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.hash = banchanDetail.getDetail_hash();
        data = new BanchanDetailDataDto.DataDtoBuilder()
                .setTop_image(banchanDetail.getData().getTop_image())
                .setThumb_images(convertToSet(banchanDetail.getData().getThumb_images()))
                .setProduct_description(banchanDetail.getData().getProduct_description())
                .setPoint(banchanDetail.getData().getPoint())
                .setDelivery_info(banchanDetail.getData().getDelivery_info())
                .setDelivery_fee(banchanDetail.getData().getDelivery_fee())
                .setPrices(convertToSet(banchanDetail.getData().getPrices()))
                .build();
    }

    public String getHash() {
        return hash;
    }

    public BanchanDetailDataDto getData() {
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
