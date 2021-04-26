package com.codesquad.sidedish.util;

import java.util.Arrays;
import java.util.List;

public class DataTypeUtils {

    public static List<String> toList(String s) {
        s = s.replace("\\[", "");
        s = s.replace("\\]", "");
        s = s.replace("\"", "");

        String[] strings = s.split(",");

        return Arrays.asList(strings);
    }
}
