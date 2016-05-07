load("5_2.sage")
load("5_4.sage")

def protocole1Encrypting(m1, s1, NA, dA, NB, eB, NC) :
	"""Encrypting of the first protocole."""	
	m1C = numerise(m1, NC)
	s1C = numerise(s1, NC)
	
	m2C = chiffrement(m1C, eB, NB)
	s2C = chiffrement(s1C, dA, NA)
	
	return m2C, s2C
	
def protocole1Decrypting(m2C, s2C, NA, eA, NB, dB, NC) :
	"""Decrypting of the first protocole."""	
	m1C = dechiffrement(m2C, dB, NB)
	s1C = dechiffrement(s2C, eA, NA)
	
	m1 = alphabetise(m1C, NC)
	s1 = alphabetise(s1C, NC)
	
	return m1, s1

def protocole2Encrypting(m1, NA, dA, NB, eB, NC) :
	"""Encrypting of the second protocole."""	
	if NA > NB:			
		m1C = numerise(m1, NC)
		m2C = chiffrement(m1C, eB, NB)
		m3C = chiffrement(m2C, dA, NA)		
	elif NA < NB:		
		m1C = numerise(m1, NC)
		m2C = chiffrement(m1C, dA, NA)
		m3C = chiffrement(m2C, eB, NB)
	else:
		raise("Value error: NA and NB couldn't be equals")
	return m3C

def protocole2Decrypting(m3C, NA, eA, NB, dB, NC) :
	"""Decrypting of the second protocole."""	
	if NA > NB:
		m2C = dechiffrement(m3C, eA, NA)
		m1C = dechiffrement(m2C, dB, NB)
		m1 = alphabetise(m1C, NC)
	elif NA < NB:
		m2C = dechiffrement(m3C, dB, NB)
		m1C = dechiffrement(m2C, eA, NA)
		m1 = alphabetise(m1C, NC)
	else:
		raise("Value error: NA and NB couldn't be equals")
	return m1