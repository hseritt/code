package org.prodigius.javabasic.example5;

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
import java.util.Set;
import java.util.HashSet;

public class Example5
{
    public static void displayNames(List<String> nameList)
    {
        System.out.println("************************************************");
        for (String name : nameList)
        {
            System.out.println(name);
        }
        System.out.println("");
    }

    public static void displayNums(List<Integer> numList)
    {
        System.out.println("************************************************");
        for (int num : numList)
        {
            System.out.println(num);
        }
        System.out.println("");
    }

    public static void main(String[] args)
    {
        List<String> names = new ArrayList<String>();
        names.add("Bob");
        names.add("Jack");
        names.add("Jill");
        names.add("Mike");
        names.add("John");
        names.add("Jim");
        names.add("Lisa");

        List<String> nameList = new ArrayList<String>();
        for (String name: names)
        {
            nameList.add(name);
        }
        displayNames(nameList);

        System.out.println("More names ...");
        List<String> moreNames = new ArrayList<String>();
        moreNames.add("Mark");
        moreNames.add("Matt");
        moreNames.add("Luke");
        moreNames.add("Juan");
        moreNames.add("Jose");

        for (String name : moreNames)
        {
            nameList.add(name);
        }

        displayNames(nameList);

        System.out.println("Put Alfa at the front of the line ...");
        nameList.add(0, "Alfa");
        displayNames(nameList);

        System.out.println("Remove Bob from the list ...");
        nameList.remove("Bob");
        displayNames(nameList);

        System.out.println("Remove the first and the last ...");
        nameList.remove(0);
        nameList.remove(nameList.size() - 1);
        displayNames(nameList);

        System.out.println("Clear the whole list ...");
        nameList.clear();
        displayNames(nameList);

        System.out.println("Fill with names again ...");
        for (String name : names)
        {
            nameList.add(name);
        }
        displayNames(nameList);

        System.out.println("Get the index of Mike ...");
        int mikeIndex = nameList.indexOf("Mike");
        System.out.println(mikeIndex);

        System.out.println("Get the count of 'Mike' occurences...");
        int mikeOccurences = Collections.frequency(nameList, "Mike");
        System.out.println(mikeOccurences);

        System.out.println("Sort by alphabetical order ...");
        Collections.sort(nameList);
        displayNames(nameList);

        System.out.println("Reverse the sort ...");
        Collections.sort(nameList, Collections.reverseOrder());
        displayNames(nameList);

        System.out.println("Insert Charles at the 3rd position ...");
        nameList.add(2, "Charles");
        displayNames(nameList);

        System.out.println("Now removing Charles ...");
        nameList.remove("Charles");
        displayNames(nameList);

        System.out.println("Let's switch to numbers ...");
        List<Integer> numList = new ArrayList<Integer>();
        numList.add(5);
        numList.add(7);
        numList.add(9);
        numList.add(2);
        numList.add(4);
        numList.add(6);
        displayNums(numList);

        System.out.println("Now, let's double them ...");
        List<Integer> doubleList = new ArrayList<Integer>();

        for (int num : numList)
        {
            doubleList.add(num * 2);
        }

        displayNums(doubleList);

        String[] fruits = {"banana", "orange", "apple", "apple", "grapes"};
        Set<String> fruitSet = new HashSet<String>();

        for (String fruit: fruits)
        {
            fruitSet.add(fruit);
        }

        ArrayList<String> fruitList = new ArrayList<String>();
        for (String fruit: fruitSet)
        {
            fruitList.add(fruit);
        }

        displayNames(fruitList);
    }
}