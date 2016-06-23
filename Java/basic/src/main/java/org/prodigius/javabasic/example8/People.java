package org.prodigius.javabasic.example8;

import java.util.*;

public class People
{
    private List<Map<String,Object>> people = new ArrayList<Map<String,Object>>();

    public void build()
    {
        String[] names = {"Mike", "Jake", "Ann", "Joe"};
        Object[] ages = {30, "20", 25, "30"};
        String[] hairColors = {"brown", "blonde", "red", "black"};

        for (int i=0; i < names.length; i++)
        {
            Map<String,Object> person = new HashMap<String,Object>();
            person.put("name", names[i]);
            person.put("age", ages[i]);
            person.put("hair", hairColors[i]);
            people.add(person);
        }
    }

    public List<Map<String,Object>> getPeople()
    {
        return this.people;
    }
}