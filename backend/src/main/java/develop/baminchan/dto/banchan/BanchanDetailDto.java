package develop.baminchan.dto.banchan;

import com.fasterxml.jackson.annotation.JsonInclude;
import develop.baminchan.entity.banchan.Data;
import develop.baminchan.entity.banchan.BanchanDetail;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class BanchanDetailDto {
    private String hash;
    private DataDto data;

    public BanchanDetailDto(BanchanDetail banchanDetail) {
        this.hash = banchanDetail.getHash();
        data = new DataDto.DataDtoBuilder()
                .setTop_image(banchanDetail.getData().getTop_image())
                .setThumb_images(convertStringToSet(banchanDetail.getData().getThumb_images()))
                .build();
    }

    private Set<String> convertStringToSet(String column) {
        if (column == null) {
            return null;
        }
        Set<String> set = new HashSet<>();
        String[] arr = column.split(",");
        set.addAll(Arrays.asList(arr));
        return set;
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
