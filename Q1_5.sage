def number(n):
	ln_n = n * ln(n) - n + 1/2 * ln(n) + sqrt(2*pi) + 1/(12*n)
	print ln_n
	n = e^ln_n
	print type(n)
	n = int(n)
	print type(n)
	n = Integer(n)
	print type(n)
	nb = n.digits(10)
	return nb

print number(4)

