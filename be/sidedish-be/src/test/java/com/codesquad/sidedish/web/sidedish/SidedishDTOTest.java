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
class SidedishDTOTest {

    @Autowired
    Environment env;

    @ParameterizedTest
    @MethodSource
    void listFrom(String jsonString, String expected) throws JsonProcessingException {
        List<SidedishDTO> sidedishDTOS = SidedishDTO.listFrom(jsonString);

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(sidedishDTOS)).isEqualTo(expected);
    }


    static Stream<Arguments> listFrom() {
        return Stream.of(
                Arguments.of("[{\n" +
                                "    \"category_id\": \"17011200\",\n" +
                                "    \"name\": \"할인특가 세트상품\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"H9881\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H9881/f2a7b4df359c850b1a9eb57e17ddf6fc.jpg\",\n" +
                                "        \"alt\": \"[소중한식사] 경상도 한상차림\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[소중한식사] 경상도 한상차림\",\n" +
                                "        \"description\": \"경상도 명물 요리 세 가지를 한 상에!\",\n" +
                                "        \"n_price\": \"39,000\",\n" +
                                "        \"s_price\": \"31,200원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"HDF4C\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/HDF4C/954b78f9111bbef54ede9fdcdf1298d8.jpg\",\n" +
                                "        \"alt\": \"[딩고] 시그니처 3종 SET\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[딩고] 시그니처 3종 SET\",\n" +
                                "        \"description\": \"오늘 저녁은 이상하게 안주빨을 세워보고 싶다!\",\n" +
                                "        \"n_price\": \"32,800\",\n" +
                                "        \"s_price\": \"24,000원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H7F20\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H7F20/dc164f934d614469d097ccd0cd57cb5e.jpg\",\n" +
                                "        \"alt\": \"[집밥의완성]초여름보양세트\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[집밥의완성]초여름보양세트\",\n" +
                                "        \"description\": \"무더위에 대비하는 6월 한상차림 초여름 보양세트\",\n" +
                                "        \"n_price\": \"26,000\",\n" +
                                "        \"s_price\": \"18,200원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  },\n" +
                                "  {\n" +
                                "    \"category_id\": \"17011000\",\n" +
                                "    \"name\": \"풍성한 고기반찬\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"HA567\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/HA567/a5bbaa6bfb727030345f26ca9afe27c5.jpg\",\n" +
                                "        \"alt\": \"[아내의쉐프] 아쉐찜닭\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[아내의쉐프] 아쉐찜닭\",\n" +
                                "        \"description\": \"아내의쉐프가 자신 있게 만들어서 이름도 '아쉐찜닭'입니다\",\n" +
                                "        \"n_price\": \"11,900\",\n" +
                                "        \"s_price\": \"10,700원\",\n" +
                                "        \"badge\": [\"이벤트특가\", \"론칭특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H206E\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg\",\n" +
                                "        \"alt\": \"[애슐리투고] 로스트 콤보 450g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[애슐리투고] 로스트 콤보 450g\",\n" +
                                "        \"description\": \"립과 치킨이 만나  더욱 맛있게\",\n" +
                                "        \"s_price\": \"10,900원\",\n" +
                                "        \"badge\": [\"론칭특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H75A2\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H75A2/f0d1fade9f7d16e7e33211a26c3aa469.jpg\",\n" +
                                "        \"alt\": \"[한옥집]소갈비김치찜 2인분\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[한옥집]소갈비김치찜 2인분\",\n" +
                                "        \"description\": \"부드러운 소갈비와 함께 푹 쪄낸 김치찜!\",\n" +
                                "        \"n_price\": \"16,500\",\n" +
                                "        \"s_price\": \"14,850원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  },\n" +
                                "  {\n" +
                                "    \"category_id\": \"17011100\",\n" +
                                "    \"name\": \"바다향가득 반찬\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"H4AAA\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/201703/02/ed36646771e0aabf4610a1de2e4b9c0e.jpg\",\n" +
                                "        \"alt\": \"[아내의쉐프] 아쉐찜닭\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[아내의쉐프] 아쉐찜닭\",\n" +
                                "        \"description\": \"아내의쉐프가 자신 있게 만들어서 이름도 '아쉐찜닭'입니다\",\n" +
                                "        \"n_price\": \"11,900\",\n" +
                                "        \"s_price\": \"10,700원\",\n" +
                                "        \"badge\": [\"이벤트특가\", \"론칭특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H206E\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H206E/325c7aeb1673ffe58052463d93e407b8.jpg\",\n" +
                                "        \"alt\": \"[남도애꽃] 통오징어초롱 300g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[남도애꽃] 통오징어초롱 300g\",\n" +
                                "        \"description\": \"국내산 오징어를 통째로 불맛소스와 함께\",\n" +
                                "        \"s_price\": \"11,000원\"\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"HA8B9\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/201703/20/f1580d55840b585ca31f7831b7ae6642.jpg\",\n" +
                                "        \"alt\": \"[황태종가] 황태양념구이 300g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[황태종가] 황태양념구이 300g\",\n" +
                                "        \"description\": \"청정 황태마을 인제에서 온 깊은 맛\",\n" +
                                "        \"s_price\": \"12,000원\"\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  },\n" +
                                "  {\n" +
                                "    \"category_id\": \"17010200\",\n" +
                                "    \"name\": \"편리한 반찬세트\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"E055F\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/201410/13/b8b0a0aba3386f030155b6cb0c1c75fa.jpg\",\n" +
                                "        \"alt\": \"[동네부엌] 사계절 건강식단 작은상\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[동네부엌] 사계절 건강식단 작은상\",\n" +
                                "        \"description\": \"마포엄마들이 사랑해온 건강반찬\",\n" +
                                "        \"s_price\": \"24,000원\",\n" +
                                "        \"badge\": [\"베스트\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"FDAEB\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/201511/04/35365307dba3c23028a55027b29e88c9.jpg\",\n" +
                                "        \"alt\": \"[집밥의완성] 한상 가득 세트 (3~4인)\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[집밥의완성] 한상 가득 세트 (3~4인)\",\n" +
                                "        \"description\": \"식단 정기배송으로 반찬고민 끝\",\n" +
                                "        \"s_price\": \"32,000원\",\n" +
                                "        \"badge\": [\"베스트\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H762E\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H762E/03cfe3d522df7451ca09ff1e0eede530.jpg\",\n" +
                                "        \"alt\": \"[옹가솜씨] 한끼뚝딱세트\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[옹가솜씨] 한끼뚝딱세트\",\n" +
                                "        \"description\": \"한 세트만 있으면 한 끼 뚝딱\",\n" +
                                "        \"n_price\": \"19,500\",\n" +
                                "        \"s_price\": \"17,500원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  },\n" +
                                "  {\n" +
                                "    \"category_id\": \"17010300\",\n" +
                                "    \"name\": \"간편한 덮밥요리\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"H05FB\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H05FB/6ff744c6f36ba437a4f8b9e9a000b0b1.jpg\",\n" +
                                "        \"alt\": \"[옹가솜씨] 소고기쩜짜장 280g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[옹가솜씨] 소고기쩜짜장 280g\",\n" +
                                "        \"description\": \"짜장의 착한 변신\",\n" +
                                "        \"s_price\": \"7,200원\"\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H0699\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H0699/295db179a21edac9aad382686cb80be8.jpg\",\n" +
                                "        \"alt\": \"[무명식당]뿌리채소비빔밥 2인분\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[무명식당]뿌리채소비빔밥 2인분\",\n" +
                                "        \"description\": \"각종 뿌리채소를 듬뿍 넣어 지은 뿌리채소영양밥\",\n" +
                                "        \"n_price\": \"5,000\",\n" +
                                "        \"s_price\": \"4,750원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"HBDEF\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/HBDEF/289b0fb6c14d2c8cd161205f8dadfa7a.jpg\",\n" +
                                "        \"alt\": \"[미노리키친] 규동 250g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[미노리키친] 규동 250g\",\n" +
                                "        \"description\": \"일본인의 소울푸드! 한국인도 좋아하는 소고기덮밥\",\n" +
                                "        \"n_price\": \"6,500\",\n" +
                                "        \"s_price\": \"5,200원\",\n" +
                                "        \"badge\": [\"이벤트특가\"]\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  },\n" +
                                "  {\n" +
                                "    \"category_id\": \"17011400\",\n" +
                                "    \"name\": \"우리아이영양반찬\",\n" +
                                "    \"items\": [{\n" +
                                "        \"detail_hash\": \"H82A2\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H82A2/a43eaf448c21906cd1300735fa9dd7a1.jpg\",\n" +
                                "        \"alt\": \"[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[빅마마의밥친구] 입맛감각 살려주는 유부토마토조림 200g\",\n" +
                                "        \"description\": \"아이반찬과 다이어트 반찬으로 일석이조!\",\n" +
                                "        \"s_price\": \"4,900원\"\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H213E\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H213E/2895aa13fce2c5721f210080a2429562.jpg\",\n" +
                                "        \"alt\": \"[동네부엌] 수제미트볼조림 300g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[동네부엌] 수제미트볼조림 300g\",\n" +
                                "        \"description\": \"재료부터 다른 수제미트볼조림\",\n" +
                                "        \"s_price\": \"8,700원\"\n" +
                                "      },\n" +
                                "      {\n" +
                                "        \"detail_hash\": \"H7A16\",\n" +
                                "        \"image\": \"https://cdn.bmf.kr/_data/product/H7A16/1a9e0f1c8de0e0d268bace68d50b0bf1.jpg\",\n" +
                                "        \"alt\": \"[Young313] 흰살생선 된장소스구이 200g\",\n" +
                                "        \"delivery_type\": [\"새벽배송\", \"전국택배\"],\n" +
                                "        \"title\": \"[Young313] 흰살생선 된장소스구이 200g\",\n" +
                                "        \"description\": \"부드러운 명태살을 이용한 특별한 생선요리\",\n" +
                                "        \"s_price\": \"9,000원\"\n" +
                                "      }\n" +
                                "    ]\n" +
                                "  }\n" +
                                "]",
                        SidedishDTOTestResults.BEST_MENU)
        );
    }

    @ParameterizedTest
    @MethodSource
    void listFromWithFile(String jsonFilePath, String expected) throws IOException {
        if (!env.acceptsProfiles(Profiles.of("dev"))) {
            return;
        }

        List<SidedishDTO> sidedishDTOS = SidedishDTO.listFrom(new ClassPathResource(jsonFilePath).getFile());

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);

        assertThat(objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(sidedishDTOS)).isEqualTo(expected);
    }

    static Stream<Arguments> listFromWithFile() {
        return Stream.of(
                Arguments.of("sample-data/best-sidedishes.json", SidedishDTOTestResults.BEST_MENU)
        );
    }
}
