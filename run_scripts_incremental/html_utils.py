def header():
    print(
        '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">'
    )
    print
    print("<HEAD>")
    print("  <TITLE>Detailed Results</TITLE>")
    print('  <link rel="icon" href="favicon.svg" />')
    print("</HEAD>")
    print("<BODY>")


def otable():
    print('<table border="1">')


def ctable():
    print("</table>")


def cheader():
    print("</BODY>")


def pc(s, cs):
    if s:
        print("<td {}>{}</td>".format(s, cs))
    else:
        print("<td>{}</td>".format(cs))


def phc(cs):
    print("<th>{}</th>".format(cs))
