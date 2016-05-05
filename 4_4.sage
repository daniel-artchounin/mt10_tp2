load("4_2.sage")

def fibonacciUsingExponentiation(n):
	"""This function returns the n-th Fibonnacci number.

	It's using Sage matrices expentiation.

	"""
	M = Matrix([[1, 1], [1, 0]])
	M = M^n
	return M[0][1]

def fibonacciUsingRecursiveDichotomicPow(n):	
	"""This function returns the n-th Fibonnacci number.

	This function uses a recursive dichotomic algorithm 
	to compute the exponentiation of a matrix.

	"""
	M = Matrix([[1, 1], [1, 0]])
	M = recursiveDichotomicPow(M, n)
	return M[0][1]