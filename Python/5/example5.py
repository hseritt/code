#!/usr/bin/env python

def display_names(name_list):
    print ('****************************')
    for name in name_list:
        print(name)
    print("")

names = ['Bob', 'Jack', 'Jill', 'Mike', 'John', 'Jim', 'Lisa']

name_list = []

for name in names:
    name_list.append(name)

display_names(name_list)

more_names = 'Mark', 'Matt', 'Luke', 'Juan', 'Jose',

name_list.extend(more_names)

display_names(name_list)

print('Put Alfa at the front of the line ...')
name_list.insert(0, 'Alfa')

display_names(name_list)

print('Remove Bob from the list ...')
name_list.remove('Bob')

display_names(name_list)

print('Remove the first and last ...')
name_list.pop(0)
name_list.pop(-1)

display_names(name_list)

print('Clear the whole list ...')
name_list.clear()

display_names(name_list)

print('Fill it with names again ...')
name_list = names.copy()
display_names(name_list)

print('Get the index of "Mike" ...')
print(name_list.index('Mike'))

print('Get the count of "Mike" in name_list ...')
print(name_list.count('Mike'))

print('Sort name_list by alphabetical order ...')
name_list.sort()
display_names(name_list)

print("Now let's reverse them ...")
name_list.reverse()
display_names(name_list)

print('Slice the 2nd through 4th values ...')
display_names(name_list[1:4])

print('Inserting Charles at the 3rd position ...')
name_list.insert(2, 'Charles')
display_names(name_list)

print('Now removing Charles ...')
del name_list[2]
display_names(name_list)

print("Let's switch to numbers ...")
num_list = [5, 7, 9, 2, 4, 6]
display_names(num_list)

print("Let's double them ...")
doubles = [num * 2 for num in num_list]
display_names(doubles)

print("Ok, now to sets ...")
fruits = {'banana', 'orange', 'apple', 'apple', 'grapes'}
print(fruits)