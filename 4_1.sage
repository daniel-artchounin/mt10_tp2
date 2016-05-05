def iterativePow(x, n):
	"""This function returns the value of x to the power of n (x^n).

	This function uses an iterative algorithm.

	"""
	result = 1
	for i in range(1, abs(n)+1):
		result *= x
	if n < 0:
		return result^(-1) 
	return result

def recursivePow(x, n):	
	"""This function returns the value of x to the power of n (x^n).

	This function uses a recursive algorithm.

	"""
	if n > 0:
		return x * recursivePow(x, n-1)
	elif n < 0:
		return x^(-1) * recursivePow(x, n+1)
	else:
		return x^0	