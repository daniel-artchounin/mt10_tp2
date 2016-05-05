def iterativeDichotomicPow(x, n):
	"""This function returns the value of x to the power of n (x^n).

	This function uses an iterative dichotomic algorithm.

	"""	
	if n == 0:
		return 1
	if n < 0:
		x = x^(-1)
		n = -n
	tmp = 1
	while n > 1:
		if n % 2 == 0:
			n /= 2
		else:
			n = (n-1)/2
			tmp *= x
		x = x^2 
	return x * tmp

def recursiveDichotomicPow(x, n):	
	"""This function returns the value of x to the power of n (x^n).

	This function uses a recursive dichotomic algorithm.

	"""
	if n > 0:
		if n % 2 == 0:
			return recursiveDichotomicPow(x^2, n/2)
		else:
			return x * recursiveDichotomicPow(x^2, (n-1)/2)
	elif n < 0:
		if n % 2 == 0:
			return recursiveDichotomicPow(x^2, n/2)
		else:
			return x^(-1) * recursiveDichotomicPow(x^2, (n+1)/2)
	else:
		return x^0	