def iterativePow(x, n):
	result = 1
	for i in range(1, n+1):
		result *= x
	return result

def recursivePow(x, n):
	if n == 0:
		return 1
	else:
		return x * recursivePow(x, n-1)