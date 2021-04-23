package sidedish.service;

import java.util.ArrayList;
import java.util.List;
import java.util.StringJoiner;

public class ConvertUtils {

    private ConvertUtils() { }

    public static List<Integer> convertToIntegerList(String string) {
        String[] strArr = string.split(",");
        List<Integer> integerList = new ArrayList<>();
        for (String s : strArr) {
            integerList.add(Integer.parseInt(s.trim()));
        }
        return integerList;
    }

    public static List<String> convertToStringList(String string) {
        String[] strArr = string.split(",");
        List<String> StringList = new ArrayList<>();
        for (String s : strArr) {
            StringList.add(s.trim());
        }
        return StringList;
    }

    public static String convertToString(List prices) {
        StringJoiner stringJoiner = new StringJoiner(", ");
        for (Object price : prices) {
            stringJoiner.add(price + "");
        }
        return stringJoiner.toString();
    }
}
