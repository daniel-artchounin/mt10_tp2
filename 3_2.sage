def findANotPrimeFermatNumber():
	prime = True
	n = 0
	while(prime):
		fN = 2^(2^n) + 1
		if not is_prime(fN):
			prime = False
			return n, fN
		else:
			n += 1