import sys
import os

tpl = r'''
%global style
\documentclass[a4paper]{book}
\usepackage{CJK}

%predined style
\input{layout}

%--------------------------------------------
\begin{document} \begin{CJK*}{UTF8}{song} \large
%begin of document

\title{Using PicoBlaze - Implement an embedded web server}
\author{buaa.byl@gmail.com}
\date{\today}

%*******************************************************************************
\include{${test}}

%*******************************************************************************

%end of document
\end{CJK*} \end{document}
'''

def file_get_content(fn):
    fp = open(fn, 'r')
    s = fp.read()
    fp.close()
    return s

def file_put_content(fn, s):
    fp = open(fn, 'w')
    fp.write(s)
    fp.close()

if __name__ == '__main__':
    if len(sys.argv) == 2:
        target = sys.argv[1]
        target = os.path.splitext(target)[0]
        result = tpl.replace('${test}', target)
        file_put_content('test.tex', result)
    else:
        print 'Usage : %s chapter1.tex' % os.path.split(sys.argv[0])[1]

