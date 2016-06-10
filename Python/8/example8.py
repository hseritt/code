#!/usr/bin/env python

from package.people import people

for person in people:

    print('Person ...')

    for k, v in person.items():

        print('%s: %s' % (k, v))

        if (k == 'age'):

            try:
                years_left_til_retirement = 65 - v
            except TypeError:
                years_left_til_retirement = 65 - int(v)

    print('Years til retirement: %d' % years_left_til_retirement)
    print("")