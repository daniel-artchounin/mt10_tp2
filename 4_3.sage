def modularIterativeExponentiation(x, n, N):
	"""This function returns the modular exponentiation.

	This function uses an iterative dichotomic algorithm.
	It returns the remainder of, the integer x raised to 
	the nth power, x^n, divided by a positive integer N.
	n should be a positive integer.

	"""	
	if n == 0:
		return 1
	x = mod(x, N)
	tmp = 1
	while n > 1:
		if n % 2 == 0:
			n /= 2
		else:
			n = (n-1)/2
			tmp = mod(tmp*x, N)
		x = mod(x^2, N)
	return mod(x*tmp, N)

def modularRecursiveExponentiation(x, n, N):	
	"""This function returns the modular exponentiation.

	This function uses an recursive dichotomic algorithm.
	It returns the remainder of, the integer x raised to 
	the nth power, x^n, divided by a positive integer N.
	n should be a positive integer.

	"""	
	x = mod(x, N)
	if n > 0:
		if n % 2 == 0:
			return mod( modularRecursiveExponentiation(x^2, n/2, N), N )
		else:
			return mod( x * modularRecursiveExponentiation(x^2, (n-1)/2, N), N )
	else:
		return x^0