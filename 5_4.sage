def chiffrement(message, publicKey, N) :
	"""Encrypting of a message."""
	return map(power_mod, message, [publicKey] * len(message), [N] * len(message))

def dechiffrement(message, privateKey, N) :
	"""Decrypting of a message."""	
	return chiffrement(message, privateKey, modulo)