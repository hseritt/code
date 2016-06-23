package org.prodigius.javabasic.example8;

import java.util.*;

public class Example8
{
    public static void main(String[] args)
    {
        People people = new People();
        people.build();

        for (Map<String,Object> person : people.getPeople())
        {
            int yearsLeft;

            try
            {
                yearsLeft = 65 - (int) person.get("age");
            }
            catch(ClassCastException e)
            {
                yearsLeft = 65 - Integer.parseInt(
                    person.get("age").toString());
            }

            System.out.println("Person ...");
            System.out.println("Name: " + person.get("name"));
            System.out.println("Age: " + person.get("age"));
            System.out.println("Hair: " + person.get("hair"));
            System.out.println("Years Left: " + yearsLeft);
            System.out.println("");
        }
    }
}