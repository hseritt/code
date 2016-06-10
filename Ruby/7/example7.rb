#!/usr/bin/env ruby2

def do_something
    puts "I am doing something."
end


def do_something_with num
    puts "I am doing something with #{num}."
end


def do_something_and_return num
    return num * 2
end


def do_something_with_option num, num2=nil
    return num * num2 if num2 else return num * 2
end


def do_something_with_opts_plus num, *args
    my_list = [num]
    my_list.concat args if args
    return my_list
end


def do_something_plus_kw num, *args, **opts
    my_list = do_something_with_opts_plus num, *args

    if opts
        my_list.push opts[:lucky]
        my_list.push opts[:unlucky]
    end

    return my_list
end


if __FILE__ == $0

    puts "Calling do_something() ..."
    do_something

    puts "Calling do_something_with() ..."
    do_something_with 7

    puts "Calling do_something_and_return using 7 ..."
    puts do_something_and_return 7

    puts "Calling do_something_with_option using 7 ..."
    puts do_something_with_option 7

    puts "Calling do_something_with_option using 7 and 3 ..."
    puts do_something_with_option 7, 3

    puts "Calling do_something_with_opts_plus using 7, 3, 5, 1"
    list = do_something_with_opts_plus 7, 5, 1, num2=3
    puts list

    puts "Calling do_something_with_opts_plus using 7, 5, 1"
    list = do_something_with_opts_plus 7, 5, 1
    puts list

    puts "Calling do_something_plus_kw using 7, 5, 1 and lucky ..."
    puts do_something_plus_kw 7, 5, 1, lucky:7, unlucky:13
end