def cleRSA(m):
	# We should improve this algorithm
	p = random_prime(2^1000, lbound=10^m)
	q = random_prime(2^1000, lbound=10^m)
	phi = (p - 1)*(q - 1)
	n = p * q
	e = ZZ.random_element(phi)
	while gcd(e, phi) != 1:
		e = ZZ.random_element(phi)
	bezout = xgcd(e, phi)
	d = Integer(mod(bezout[1], phi))
	return n, e, d