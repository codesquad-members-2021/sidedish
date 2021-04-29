package com.codesquad.sidedish.util;

import com.codesquad.sidedish.image.domain.SidedishImage;

public class DefaultImageUtil {
    public static final String NOT_FOUND_IMAGE_URL = "https://grepp-programmers.s3.ap-northeast-2.amazonaws.com/files/production/db00837d-4762-4073-abaf-aa924e507eaa/emoticon-01.png";
    private static SidedishImage notFoundImage;

    private DefaultImageUtil() {
    }

    public static void initNotFoundImage(SidedishImage notFoundImage) {
        DefaultImageUtil.notFoundImage = notFoundImage;
    }

    public static SidedishImage getNotFoundImage() {
        return notFoundImage;
    }
}
