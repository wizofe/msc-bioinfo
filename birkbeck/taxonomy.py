# Python Assesment
# (4) Does a genus has multiple species? Check taxonomy2.txt, Version 2
# Using positive lookahead and lookbehind as:
# (?<!a)b matches b preceded by a, without including a in the regex q(?!u) matches q followed by
# u without including u in the regex
# Ioannis Valasakis - 19 Oct 2017

import re

# sweet function to take a file and make it a string
def open_da_file(file):
    da_string = ""
    with open(file) as f:
        for line in f:
            da_string += line
    return da_string

taxonomy = open_da_file('taxonomy2.txt')

# regular expression - returns tuple with second element the genus
p = re.compile('(?<=genus\|)(\w+\w)(?= |)')

genus = [] # stores the pair genus and 
genus = p.findall(taxonomy)

genus.sort() # change the list and keep it sorted

# a dictionary of the appearance of each element in the list
gen_dic = {x:genus.count(x) for x in genus}

# Loop over items and unpack each item.
for k, v in gen_dic.items():
    if v >= 2:
    # Display key and value.
        print(k,'=', v)
