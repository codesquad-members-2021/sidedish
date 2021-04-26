package develop.baminchan.dto.util;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class StringConvertor {
    private StringConvertor() {
    }

    public static Set<String> convertToSet(String column) {
        if (column == null) {
            return null;
        }
        Set<String> set = new HashSet<>();
        String[] arr = column.split(", ");
        set.addAll(Arrays.asList(arr));
        return set;
    }
}
