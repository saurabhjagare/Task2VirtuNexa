package com.sortingapp;

import java.util.Collections;
import java.util.List;

public class SortService {
    public static List<Integer> sortNumbers(List<Integer> numbers, boolean ascending) {
        if (ascending) {
            Collections.sort(numbers);
        } else {
            numbers.sort(Collections.reverseOrder());
        }
        return numbers;
    }
}
