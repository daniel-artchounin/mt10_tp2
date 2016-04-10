def euclideanAlgorithm(a, b):
	"""This function computes and returns the gcd of a and b.

	This function computes the greatest common divisor of a and b using
	the Euclidian algorithm. Then, it returns it and the number of 
	iterations of the algorithm in a tuple.

	"""
	iterator = 0
	if a > b:
		while b != 0:
			iterator += 1
			# print(a, b)
			q = a // b 
			r = a % b
			a = b
			b = r
		return (a, iterator)
	else:
		errorMessage = "The two parameters should be integers. " + \
		"The first one should be greater than the second one."
		raise ValueError(errorMessage)