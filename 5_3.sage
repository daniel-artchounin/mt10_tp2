import random as r

def cleRSA(m):
	s = r.randint(900, 1000)
	t = r.randint(1000, 1100)
	p = random_prime(2^s, lbound=2^m)
	q = random_prime(2^t, lbound=2^m)
	phi = (p - 1)*(q - 1)
	n = p * q
	e = ZZ.random_element(phi)
	while gcd(e, phi) != 1:
		e = ZZ.random_element(phi)
	bezout = xgcd(e, phi)
	d = Integer(mod(bezout[1], phi))
	return n, e, d

def cleRSA2048():
	s = r.randint(2048, 2055)
	t = r.randint(2055, 2062)
	p = random_prime(2^s, lbound=2^2048)
	q = random_prime(2^t, lbound=2^2048)
	phi = (p - 1)*(q - 1)
	n = p * q
	e = ZZ.random_element(phi)
	while gcd(e, phi) != 1:
		e = ZZ.random_element(phi)
	bezout = xgcd(e, phi)
	d = Integer(mod(bezout[1], phi))
	return n, e, d