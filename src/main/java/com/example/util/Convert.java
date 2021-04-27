package com.example.util;

import java.util.Arrays;

public class Convert {
    public static String ArrayToString(String[] arr) {
        if (arr == null) {
            return "";
        }

        String detail = Arrays.toString(arr);
        return detail.substring(1, detail.length() - 1);
    }

    public static int StrPriceToInt(String str) {
        if (str.contains("원")) {
            str = str.replaceAll("원", "");
        }
        if (str.contains(",")) {
            str = str.replaceAll(",", "");
        }

        return Integer.parseInt(str);
    }
}
