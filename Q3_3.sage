def nombre_prime():
	p = 0
	while(p<=257):
		if is_prime(p):
			print "{} \t".format(p)
		p += 1


def nombre_mersenne():
	p = 0
	while(p<=257):
		if is_prime(p):
			n = 2^(p)-1 
			print "{} : {} \t".format(p,n) 
		p+=1

def nombre_prime_mersenne():
	p = 0
	while(p<=257):
		if is_prime(p):
			n = 2^(p)-1
			if is_prime(n):
				print "{} : {} \t".format(p,n) 
		p += 1

nombre_prime()
print 'Mersenne :'
nombre_mersenne()
print 'Mersenne premier :' 
nombre_prime_mersenne()

# M41 = 13367 * 164511353

# M47 = 2351 * 4513 * 13264529


