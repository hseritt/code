#!/usr/bin/env python
"""
Add the directive to tell the terminal which interpreter to use for this
script.
"""

"""
Print out: "This is a line. Note how the next line prints below this one."
"""
print("This is a line. Note how the next line prints below this one.")

"""
Print out: "Note how the next 'line' goes to the right. " but without
a newline.
"""
print("Note how the next 'line' goes to the right. ", end="")

"""
Print out: "Short line."
"""
print("Short line.")

"""
Print out: "Now we're back to a new line." Put a newline character at the
end of the string.
"""
print("Now we're back to a new line.\n")

"""
Print out: "Did you see how this line skipped to a new one?"
"""
print("Did you see how this line skipped to a new one?")

"""
Declare three variables ('name', 'age' and 'half'). Assign your name
to 'name', assign your age to 'age' and 0.5 to 'half.'
"""
name = "My Name"
age = 48
half = 0.5

"""
Print out:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
"""
print("My name is ", name)
print("My age is ", age)
print("A half a cup is ", half, " of a full cup.\n")

"""
Print out using string formatting:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
"""
print("My name is %s" % (name))
print("My age is %d" % (age))
print("A half a cup is %f of a full cup.\n" % (half))

"""
Print out using the format method:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
"""
print("My name is {}".format(name))
print("My age is {}".format(age))
print("A half a cup is {} of a cup.\n".format(half))

"""
Print out using the string concatenator:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
"""
print("My name is " + name)
print("My age is " + str(age))
print("A half a cup is " + str(half) + "\n")

"""
Declare three variables ('name', 'age' and 'half'). Assign your name
to 'name', assign your age to 'age' and 0.5 to 'half.' Do them all on
the same line though.
"""
name, age, half = "My Name", 48, 0.5

"""
Print out "About me and what I think about cups:". Insert a newline at the end.
"""
print("About me and what I think about cups:\n")

"""
Print out using the format method:
My name is, 'name'
My age is, 'age'
A half a cup is, 'half', of a full cup. <- Add a new line to this one.
Make sure each line starts with a tab.
"""
print("\tMy name is %s" % (name))
print("\tMy age is %d" % (age))
print("\tA half a cup is %f of a full cup.\n" % (half))