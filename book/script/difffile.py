import sys, re

fin = open(sys.argv[1])
lines = fin.read()
fin.close()

def parse_bzrdiff():
    regex_prefix = re.compile(r'=== (modified|added)(.+)')
    for line in lines.split('\n'):
        if len(line) == 0:
            continue
        if regex_prefix.match(line):
            print line


def parse_diff():
    regex_prefix = re.compile(r'^diff -uNr ')
    regex_header = re.compile(r'^diff -uNr ([^ ]+) ([^ ]+)')
    lineno = 1

    for line in lines.split('\n'):
        if len(line) == 0:
            continue
        if regex_prefix.match(line):
            res = regex_header.search(line)
            relative_path = res.groups()[0]
            if relative_path.find('\\') != -1:
                #windows EOL
                relative_path = '\\'.join(relative_path.split('\\')[1:])
            else:
                #linux EOL
                relative_path = '/'.join(relative_path.split('/')[1:])
            print '%04d: %s' % (lineno, relative_path)
        lineno += 1

    print

parse_diff()
