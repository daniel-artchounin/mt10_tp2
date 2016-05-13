import random as r

def cleRSA(m):
	# We should improve this algorithm
	s = r.randint(900, 1000)
	t = r.randint(1000, 1100)
	p = random_prime(2^s, lbound=10^m)
	q = random_prime(2^t, lbound=10^m)
	phi = (p - 1)*(q - 1)
	n = p * q
	e = ZZ.random_element(phi)
	while gcd(e, phi) != 1:
		e = ZZ.random_element(phi)
	bezout = xgcd(e, phi)
	d = Integer(mod(bezout[1], phi))
	return n, e, d

