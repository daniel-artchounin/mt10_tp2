def mersenneNumber(p):
	if not is_prime(p):
		raise ValueError("p must be a prime number.")
	else:
		return 2^p - 1 

def mersenneNumbers(primeNumbers):
	results = []
	for p in primeNumbers:
		results.append( (p, mersenneNumber(p)) )
	return results

def mersennePrimes(primeNumbers):
	results = []
	for p in primeNumbers:
		mP = mersenneNumber(p)
		if is_prime(mP):
			results.append( (p, mP) )
	return results