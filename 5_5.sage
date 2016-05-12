load("5_2.sage")
load("5_3.sage")
load("5_4.sage")

cle_alice = cleRSA(5)
cle_bob = cleRSA(5)

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

m2C = protocole1Encrypting("Rendez-vous demain vers 14 heures", "al94f60", 15, cle_alice[2], 10, cle_bob[1], 3)[0]
s2C = protocole1Encrypting("Rendez-vous demain vers 14 heures", "al94f60", 15, cle_alice[2], 10, cle_bob[1], 3)[1]
print m2C
print s2C

m1 = protocole1Decrypting(m2C, s2C, 15, cle_alice[1], 10, cle_bob[2], 3)[0]
s1 = protocole1Decrypting(m2C, s2C, 15, cle_alice[1], 10, cle_bob[2], 3)[1]
print m1
print s1

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

m3C = protocole2Encrypting("Rendez-vous demain vers 14 heures", 15, cle_alice[2], 10, cle_bob[1], 3)
print m3C
m1 = protocole2Decrypting(m3C, 15, cle_alice[1], 10, cle_bob[2], 3)
print m1
