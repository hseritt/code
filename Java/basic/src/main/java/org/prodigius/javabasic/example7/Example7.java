package org.prodigius.javabasic.example7;

import java.util.Map;
import java.util.HashMap;

public class Example7
{
    public static void doSomething()
    {
        System.out.println("I am doing something.");
    }


    public static void doSomething(int num)
    {
        System.out.println("I am doing something with " + num);
    }


    public static void doSomethingWith(int num)
    {
        System.out.println("I am doing something with " + num);
    }


    public static int doSomethingAndReturn(int num)
    {
        return num * 2;
    }


    public static int[] doSomethingWithOptions(int num, int... nums)
    {
        int[] results;

        if (nums.length == 0)
        {
            results = new int[1];
            results[0] = num * 2;
        }
        else
        {
            results = new int[nums.length + 1];
            results[0] = num * 2;
            for (int i=1; i < results.length; i++)
            {
                results[i] = nums[i - 1] * 2;
            }
        }

        return results;
    }


    public static int[] doSomethingPlus(
        int num, Map<String,Integer> extraNums, int... nums)
    {

        int[] res = doSomethingWithOptions(num, nums);
        for (int n : res)
        {
            System.out.println(n);
        }

        int[] results = new int[res.length + extraNums.size()];

        int i;
        for (i=0; i < res.length; i++)
        {
            results[i] = res[i];
        }

        for (int v : extraNums.values())
        {
            results[i] = v;
            i++;
        }

        return results;

    }

    public static void main(String[] args)
    {
        System.out.println("Calling doSomething() ...");
        doSomething();

        System.out.println("Calling doSomething(7) ...");
        doSomethingWith(7);
        doSomething(7);

        System.out.println("Calling doSomethingAndReturn(7) ...");
        System.out.println(doSomethingAndReturn(7));

        System.out.println("Calling doSomethingWithOptions(7) ...");

        for (int n : doSomethingWithOptions(7))
        {
            System.out.print(n + " .. ");
        }

        for (int n : doSomethingWithOptions(7, 9, 11, 13))
        {
            System.out.print(n + " .. ");
        }

        System.out.println("");

        Map<String, Integer> extraNums = new HashMap<String, Integer>();
        extraNums.put("lucky", 7);
        extraNums.put("unlucky", 13);

        System.out.println("Calling doSomethingPlus() ...");

        for (int n : doSomethingPlus(7, extraNums, 9, 11, 13))
        {
            System.out.print(n + " .. ");
        }

        System.out.println("");
    }
}