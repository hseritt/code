package org.prodigius.javabasic.example6;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.stream.Stream;

public class Example6
{
    public static void main(String[] args) throws IOException
    {
        String outfile = "out.txt";
        String text = "aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n";

        System.out.println("Writing to outfile ....");
        Files.write(Paths.get(outfile), text.getBytes());

        System.out.println("Reading outfile line by line ...");

        try (Stream<String> stream = Files.lines(Paths.get(outfile)))
        {
            stream.forEach(System.out::println);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        String moreText = "alsdkjfalfdkj\nalsdfjldfkj\n";

        System.out.println("Adding more to outfile ...");

        try
        {
            Files.write(Paths.get(outfile), moreText.getBytes(), StandardOpenOption.APPEND);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        System.out.println("Reading entire file ....");
        String out = new String(Files.readAllBytes(Paths.get(outfile)));
        System.out.println(out);

    }
}