def nombre_fermat():
	bool_prime = True
	n = 0
	while(bool_prime):
		if not is_prime(2^(2^ n)+1):
			bool_prime = False
			return n
		else :
			n += 1

print nombre_fermat()
