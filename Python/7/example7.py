#!/usr/bin/env python

def do_something():
    print("I'm doing something")


def do_something_with(num):
    print(num * 2)


def do_something_and_return(num):
    return num * 2


def do_something_with_options(num, num2=None):
    if num2:
        return num * num2
    else:
        return num * 2


def do_something_with_opts_plus(num, num2=None, *args):
    my_list = [num,]
    if num2:
        my_list.append(num2)
        if args:
            my_list.extend(args)
    return my_list


def do_something_plus_kw(num, num2=None, *args, **kwargs):
    my_list = do_something_with_opts_plus(num, num2, *args)
    if kwargs:
        for k, v in kwargs.items():
            my_list.append(v)
    return my_list


if __name__ == '__main__':

    print('\nCalling do_something ...')
    do_something()

    print('\nCalling do_something_with using 7 ...')
    do_something_with(7)

    print('\nCalling do_something_and_return using 7 ...')
    val = do_something_and_return(7)
    print(val)

    print('\nCalling do_something_with_options using 7 and 4 ...')
    print(do_something_with_options(7, num2=4))
    print(do_something_with_options(7, 4))
    print(do_something_with_options(7))

    print('\nCalling do_something_with_opts_plus ...')
    print(do_something_with_opts_plus(7, 4, 2, 3, 5))

    print('\nCalling do_something_plus_kw ...')
    print(do_something_plus_kw(7, 4, 2, 3, 5, lucky=7, unlucky=13))

    print('\nAnother spin on do_something_with_opts_plus ...')
    nums=[2, 3, 5]
    print(do_something_with_opts_plus(7, 4, *nums))

    print('\nAnother spin on do_something_plus_kw ...')
    extras={'lucky': 7, 'unluck': 13}
    print(do_something_plus_kw(7, 4, *nums, **extras))