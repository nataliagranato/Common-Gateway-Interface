#!/usr/bin/env python3
import cgi, cgitb cgitb.enable()
input_data = cgi.FieldStorage()
print('Content-Type: text/html')
print('')
print('<h2>Resultado</h2>')
try:
    num1 = int(input_data["num1"].value)
    num2 = int(input_data["num2"].value)
except:
    print('<output>Desculpe, esse script funciona apenas números (integrais).</output>')
    raise SystemExit(1)
print('<output>{0} + {1} = {2}</output>'.format(num1, num2, num1 + num2))
