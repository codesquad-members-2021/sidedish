package com.codesquad.sidedish.web.sidedish;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.core.env.Profiles;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;
import java.util.List;
import java.util.stream.Stream;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class ItemDTOTest {

    @Autowired
    Environment environment;

    @ParameterizedTest
    @MethodSource
    void mainSideDishListFrom(String jsonString, String expected) throws JsonProcessingException {
        List<ItemDTO> itemDTOS = ItemDTO.listFrom(jsonString);

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOS)).isEqualTo(expected);
    }

    static Stream<Arguments> mainSideDishListFrom() {
        return Stream.of(
                Arguments.of("[ {\n" +
                                "  \"detail_hash\" : \"HBDEF\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/HF56E/2d3f99a9a35601f4e98837bc4d39b2c8.jpg\",\n" +
                                "  \"alt\" : \"[윤식당] 불고기 with Rice (재료)\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[윤식당] 불고기 with Rice (재료)\",\n" +
                                "  \"description\" : \"윤식당 불고기메뉴의 가장 기본인 불고기라이스! (마더소스 포함)\",\n" +
                                "  \"n_price\" : \"0\",\n" +
                                "  \"s_price\" : \"7,000\",\n" +
                                "  \"badge\" : null\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"HDF73\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/HDF73/7674311a02ba7c88675f3186ddaeef9e.jpg\",\n" +
                                "  \"alt\" : \"[빅마마의밥친구] 아삭 고소한 연근고기조림 250g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[빅마마의밥친구] 아삭 고소한 연근고기조림 250g\",\n" +
                                "  \"description\" : \"편식하는 아이도 좋아하는 건강한 연근조림\",\n" +
                                "  \"n_price\" : \"0\",\n" +
                                "  \"s_price\" : \"5,500\",\n" +
                                "  \"badge\" : null\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"HF778\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/HF778/cad8eee316cf7151e07638aa57b32a9d.jpg\",\n" +
                                "  \"alt\" : \"[소중한식사] 골뱅이무침 195g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[소중한식사] 골뱅이무침 195g\",\n" +
                                "  \"description\" : \"매콤새콤달콤, 반찬으로도 안주로도 좋은\",\n" +
                                "  \"n_price\" : \"7,000\",\n" +
                                "  \"s_price\" : \"6,300\",\n" +
                                "  \"badge\" : [ \"이벤트특가\" ]\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"HFB53\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/HFB53/b6beada6b89af950289003d929936d9c.jpg\",\n" +
                                "  \"alt\" : \"[옹가솜씨] 꽁치간장조림 240g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[옹가솜씨] 꽁치간장조림 240g\",\n" +
                                "  \"description\" : \"생강 향이 산뜻한\",\n" +
                                "  \"n_price\" : \"0\",\n" +
                                "  \"s_price\" : \"5,800\",\n" +
                                "  \"badge\" : null\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"H077F\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/H077F/0221110ead70dfd455e40703bbdd6252.jpg\",\n" +
                                "  \"alt\" : \"[마더앤찬] 코다리구이 320g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[마더앤찬] 코다리구이 320g\",\n" +
                                "  \"description\" : \"큼지막하고 살집 많은 동태 한 마리로 만든 코다리구이입니다.\",\n" +
                                "  \"n_price\" : \"7,500\",\n" +
                                "  \"s_price\" : \"6,750\",\n" +
                                "  \"badge\" : [ \"론칭특가\" ]\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"H4665\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/H4665/385f4106ac26f6e4fe7c640714f405a5.jpg\",\n" +
                                "  \"alt\" : \"[남도애꽃] 반건조 문어조림 120g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[남도애꽃] 반건조 문어조림 120g\",\n" +
                                "  \"description\" : \"씹을수록 감칠맛나는 문어살의 쫄깃함\",\n" +
                                "  \"n_price\" : \"0\",\n" +
                                "  \"s_price\" : \"4,600\",\n" +
                                "  \"badge\" : null\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"H1AA9\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/H1AA9/2455226945d52f5aefd51f35d663bb16.jpg\",\n" +
                                "  \"alt\" : \"[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[마샐미디쉬] 매콤마늘쫑 해산물볶음 180g\",\n" +
                                "  \"description\" : \"탱글탱글한 새우와 오징어를 마늘쫑과 함께 매콤하게 볶아냈어요.\",\n" +
                                "  \"n_price\" : \"6,900\",\n" +
                                "  \"s_price\" : \"6,210\",\n" +
                                "  \"badge\" : [ \"론칭특가\" ]\n" +
                                "}, {\n" +
                                "  \"detail_hash\" : \"HEDFB\",\n" +
                                "  \"image\" : \"https://cdn.bmf.kr/_data/product/HEDFB/bc3b777115e8377a48c7bd762fe5fdc9.jpg\",\n" +
                                "  \"alt\" : \"[빅마마의밥친구] 비빔오징어 150g\",\n" +
                                "  \"delivery_type\" : [ \"새벽배송\", \"전국택배\" ],\n" +
                                "  \"title\" : \"[빅마마의밥친구] 비빔오징어 150g\",\n" +
                                "  \"description\" : \"달콤한 신야초발효액이 포인트!\",\n" +
                                "  \"n_price\" : \"0\",\n" +
                                "  \"s_price\" : \"5,000\",\n" +
                                "  \"badge\" : null\n" +
                                "} ]"
                        , ItemDTOTestResults.MAIN_MENU)
        );
    }


    @ParameterizedTest
    @MethodSource
    void mainSidedishListFromWithFile(String jsonFilePath, String expected) throws IOException {
        if(!environment.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }

        List<ItemDTO> itemDTOS = ItemDTO.listForm(new ClassPathResource(jsonFilePath).getFile());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(itemDTOS)).isEqualTo(expected);
    }

    static Stream<Arguments> mainSidedishListFromWithFile() {
        return Stream.of(
                Arguments.of("sample-data/main-sidedishes.json", ItemDTOTestResults.MAIN_MENU)
        );
    }
}
