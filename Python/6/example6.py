#!/usr/bin/env python

outfile = 'out.txt'

text = 'aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n'

print('Writing to outfile ...')
open(outfile, 'w').write(text)

print('Reading from outfile ...')
for line in open(outfile, 'r').readlines():
    print(line)

print('Adding more text to outfile ...')
more_text = 'alsdkjfalfdkj\nalsdfjldfkj\n'

open(outfile, 'a').write(more_text)

print('Opening outfile to read the entire text ...')
out = open(outfile, 'r').read()

print(out)