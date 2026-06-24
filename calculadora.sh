#!/bin/bash
# === Calculadora Python ===

python3 - <<'PY'
import sys

# Se o stdin do processo estiver redirecionado, força leitura a partir do terminal
try:
    sys.stdin = open('/dev/tty')
except Exception:
    pass

num1 = eval(input('Digite o primeiro número: '))
num2 = eval(input('Digite o segunndo número: '))

print('Resultado da soma é:', num1 + num2)
print('Resultado da subtração é:', num1 - num2)
print('Resultado da multiplicação é:', num1 * num2)
if num2 != 0:
	print('Resultado da divisão é:', num1 / num2)
	print('Resultado da divisão inteira é:', num1 //num2)
	print('Resto da divisão inteira é:', num1 % num2)
else:
	print('Não é possível dividir por zero')
print('Resultado da potenciação é:', num1 ** num2)

PY
