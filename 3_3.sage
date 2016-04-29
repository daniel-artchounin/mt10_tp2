import collections

def nombre_prime():
	p = 0
	liste = []
	while(p<=257):
		if is_prime(p):
			liste.append(p)
		p += 1
	return liste


def nombre_mersenne():
	p = 0
	tab = collections.OrderedDict()
	while(p<=257):
		if is_prime(p):
			n = 2^(p)-1 
			tab[str(p)] = n
		p+=1
	return tab

def nombre_prime_mersenne():
	p = 0
	tab = collections.OrderedDict()
	while(p<=257):
		if is_prime(p):
			n = 2^(p)-1
			if is_prime(n):
				tab[str(p)] = n
		p += 1
	return tab

nombre_prime()
print 'Mersenne :'
nombre_mersenne()
print 'Mersenne premier :' 
nombre_prime_mersenne()

# M41 = 13367 * 164511353

# M47 = 2351 * 4513 * 13264529


