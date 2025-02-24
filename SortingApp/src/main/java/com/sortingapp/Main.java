package com.sortingapp;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter numbers separated by commas: ");
        String input = scanner.nextLine();
        
        List<Integer> numbers = Arrays.stream(input.split(","))
                .map(String::trim)
                .map(Integer::parseInt)
                .collect(Collectors.toList());

        System.out.print("Sort in ascending order? (y/n): ");
        boolean ascending = scanner.nextLine().equalsIgnoreCase("y");

        List<Integer> sortedNumbers = SortService.sortNumbers(numbers, ascending);
        System.out.println("Sorted Numbers: " + sortedNumbers);

        DatabaseManager.saveSortedData(input, sortedNumbers.toString(), ascending ? "ASC" : "DESC");

        scanner.close();
    }
}
