load("1_5.sage")
load("1_6.sage")
load("2.sage")
load("3_2.sage")
load("3_3.sage")
load("3_4.sage")
load("4_1.sage")
load("4_2.sage")
load("4_3.sage")
load("4_4.sage")
load("5_3.sage")
load("5_5.sage")

########################## Question 1.1 ##########################
print('########################## Question 1.1 ##########################\n')
print("Temps de calcul de 10^10")
time a=10^10
print("Temps de calcul de 10^(10^2)")
time a=10^(10^2)
print("Temps de calcul de 10^(10^3)")
time a=10^(10^3)
print("Temps de calcul de 10^(10^4)")
time a=10^(10^4)
print("Temps de calcul de 10^(10^5)")
time a=10^(10^5)
print("Temps de calcul de 10^(10^6)")
time a=10^(10^6)
print("Temps de calcul de 10^(10^7)")
time a=10^(10^7)
print("Temps de calcul de 10^(10^8)")
time a=10^(10^8)
# print("Temps de calcul de 10^(10^9)")
# time a=10^(10^9)

########################## Question 1.2 ##########################
print('\n\n########################## Question 1.2 ##########################\n')
x = 10
for base in [10, 2]:
	print("Nombre de chiffres de {} en base {} : {}".format(x, base, x.ndigits(base)))

########################## Question 1.3 ##########################
print('\n\n########################## Question 1.3 ##########################\n')
for n in [10, 100, 1000]:
	print("{}! = {}".format(n, n.factorial()))

########################## Question 1.4 ##########################
print('\n\n########################## Question 1.4 ##########################\n')
data = [
	(12^34, "12^34"), 
	((12^34)^3, "(12^34)^3"),
	((12)^(34^3), "(12)^(34^3)"),
	(factorial(100), "100!"),
	(factorial(1000), "1000!"),
	(factorial(10000), "10000!"),
	(factorial(100000), "100000!"),
	(factorial(factorial(6)), "6!!"),
	(factorial(factorial(7)), "7!!"),
	(factorial(factorial(10)), "10!!")
]
base = 10
for x, name in data:
	print("Nombre de chiffres de {} en base {} : {}".format(name, base, x.ndigits(base)))

########################## Question 1.5 ##########################
print('\n\n########################## Question 1.5 ##########################\n')
print("Nombre de chiffres de 100!! en base 10 : {}".format(nbDigitsFactBase10(factorial(100))))

########################## Question 1.6 ##########################
print('\n\n########################## Question 1.6 ##########################\n')
print("Nombre de chiffres de 100!! en base 2 : {}".format(nbDigitsFactBase2(factorial(100))))

########################## Question 2 ##########################
print('\n\n########################## Question 2 ##########################\n')
data = [5, 10, 25, 50, 500, 1000]
for i in data:
	gcDiv, iterations = euclideanAlgorithm(fibonacci(i + 1), fibonacci(i))
	print("PGCD(fibonacci({}), fibonacci({})) = {} : obtenu en {} itération(s) via l'algorithme d'Euclide.".format(i + 1, i, gcDiv, iterations))
gcDiv, iterations = euclideanAlgorithm(29753, 4578)
print("PGCD({}, {}) = {} : obtenu en {} itération(s) via l'algorithme d'Euclide.".format(29753, 4578, gcDiv, iterations))
data = [9, 8]
for i in data:
	print("fibonacci({}) = {}".format(i, fibonacci(i)))

########################## Question 3 ##########################
print('\n\n########################## Question 3 ##########################\n')

########################## Question 3.1 ##########################
print('\n\n########################## Question 3.1 ##########################\n')
data = [389, 3000, 2, 1]
for i in data:
	iIsPrime = is_prime(i)
	if iIsPrime:
		print("{} est un nombre premier.".format(i))
	else:
		print("{} n'est pas un nombre premier.".format(i))

print("")

listParameters = [[10], [7], [2000, 2020], [2, 2], [2, 3], [5, 10]]
for parameter in listParameters:
 	if len(parameter) == 1:
 		print("Nombre premiers strictement inférieurs à {} : {}".format(parameter[0], prime_range(*parameter)))
 	else:
 		print("Nombre premiers entre {} et {} (exclus) : {}".format(parameter[0], parameter[1], prime_range(*parameter)))

print("")

data = [-200, 0, 2, 3, 4, 5, 2004]
for i in data:
	print("'Premier' nombre premier strictement supérieur à {} : {}".format(i, next_prime(i)))

print("")

data = [2, 5, 17, 35, 133, 500, 1000]
for i in data:
	print("Décomposition unique en produit de nombres premiers de {} : {}".format(i, factor(i)))

print("")

data = [3.5, 7, 100, 500, 509, 1000, 100000]
for i in data:
	print("Nombre de nombres premiers inférieurs ou égaux à {} : {}".format(i, prime_pi(i)))

########################## Question 3.2 ##########################
print('\n\n########################## Question 3.2 ##########################\n')
results = findANotPrimeFermatNumber()
print("Le premier nombre de Fermat non premier est F{} = {}.".format(results[0], results[1]))

########################## Question 3.3 ##########################
print('\n\n########################## Question 3.3.1 ##########################\n')
primeNumbers = prime_range(258)
print("Nombre de nombres premiers inférieurs ou égaux à 257 : {}".format(len(primeNumbers)))
print("La liste des nombres premiers inférieurs ou égaux à 257 est la suivante :")
for p in primeNumbers:
	print("{}".format(p))

print("")

print("La liste des nombres de Mersenne tels que leurs indices soient inférieurs ou égaux à 257 est la suivante :")
results = mersenneNumbers(primeNumbers)
for p, mP in results:
	print("M_{}={}".format(p, mP))

print('\n\n########################## Question 3.3.2 ##########################\n')
print("La liste des nombres de Mersenne et premiers inférieurs à 257 est la suivante :")
results = mersennePrimes(primeNumbers)
for p, mP in results:
	print("M_{}={}".format(p, mP))

print('\n\n########################## Question 3.3.2 ##########################\n')
data = [41, 47]
for p in data:
	print("Décomposition de M_{} en produit de facteurs premiers : {}".format(p, factor(mersenneNumber(p))))

########################## Question 3.4 ##########################
print('\n\n########################## Question 3.4 ##########################\n')

print('\n\n########################## Question 3.4.1 ##########################\n')
for n in range(0, 14):
	print("Nombre de nombres premiers inférieurs ou égaux à 10^{} : {}".format(n, prime_pi(10^n)))

print('\n\n########################## Question 3.4.2 ##########################\n')
abscissas = [10^n for n in range(1, 14)]

points1 = [(n, prime_pi(n)) for n in abscissas]
points2 = [(n, xDividedByLnX(n)) for n in abscissas]
chart1 = line(points1, color='#104E8B', legend_label="pi(n)") + line(points2, color="#CD6889", legend_label="n/ln(n)")
show(chart1)

print('\n\n########################## Question 3.4.3 ##########################\n')
points3 = [(n, piTimesLnXDividedByX(n)) for n in abscissas]
chart2 = line(points3, color='#6E8B3D', legend_label="pi(n) * ln(n)/n")
show(chart2)

########################## Question 4.1 ##########################
print('\n\n########################## Question 4.1 ##########################\n')
bases = [-5, 7] 
exponents = [-64, -15, 0, 13, 79]
for x in bases:
	for n in exponents:
		print("({})^({}) = {}".format(x, n, x^(n)))
		print("iterativePow({}, {}) = {}".format(x, n, iterativePow(x, n)))
		print("recursivePow({}, {}) = {}".format(x, n, recursivePow(x, n)))
		print("")

########################## Question 4.2 ##########################
print('\n\n########################## Question 4.2 ##########################\n')
bases = [-5, 7] 
exponents = [-64, -15, 0, 13, 79]
for x in bases:
	for n in exponents:
		print("({})^({}) = {}".format(x, n, x^(n)))
		print("iterativeDichotomicPow({}, {}) = {}".format(x, n, iterativeDichotomicPow(x, n)))
		print("recursiveDichotomicPow({}, {}) = {}".format(x, n, recursiveDichotomicPow(x, n)))
		print("")

########################## Comparaisons entre 4.2 et 4.3 ##########################
print('########################## Comparaisons entre 4.2 et 4.3 ##########################\n')
data = {5:97856, 7:57432}
for key in data:
	print("Temps de calcul de iterativePow({}, {})".format(key,data[key]))
	timeit('iterativePow({}, {})'.format(key, data[key]))
	print("Temps de calcul de iterativeDichotomicPow({}, {})".format(key,data[key]))
	timeit('iterativeDichotomicPow({}, {})'.format(key, data[key]))
	print("")

data = {6:148, 5:976}
for key in data:
	print("Temps de calcul de recursivePow({}, {})".format(key,data[key]))
	timeit('recursivePow({}, {})'.format(key, data[key]))
	print("Temps de calcul de recursiveDichotomicPow({}, {})".format(key,data[key]))
	timeit('recursiveDichotomicPow({}, {})'.format(key, data[key]))
	print("")

########################## Question 4.3 ##########################
print('\n\n########################## Question 4.3 ##########################\n')
bases = [-5, 7] 
exponents = [0, 13, 79]
moduli = [7, 17]
for modulus in moduli:
	for x in bases:
		for n in exponents:		
			print("mod(({})^({}), {}) = {}".format(x, n, modulus, mod(x^(n), modulus)))
			print("modularIterativeExponentiation({}, {}, {}) = {}".format(x, n, modulus, modularIterativeExponentiation(x, n, modulus)))
			print("modularRecursiveExponentiation({}, {}, {}) = {}".format(x, n, modulus, modularRecursiveExponentiation(x, n, modulus)))
			print("")

########################## Question 4.4 ##########################
print('\n\n########################## Question 4.4 ##########################\n')
indexes = [-57, -13, 0, 17, 65]
for n in indexes:		
	print("fibonacci({}) = {}".format(n, fibonacci(n)))
	print("fibonacciUsingExponentiation({}) = {}".format(n, fibonacciUsingExponentiation(n)))
	print("fibonacciUsingRecursiveDichotomicPow({}) = {}".format(n, fibonacciUsingRecursiveDichotomicPow(n)))
	print("")

# Mis en commentaires car il faut patienter plusieurs minutes pour obtenir une clé à 2048 bits...
########################## Question 5.3 ##########################
# print('\n\n########################## Question 5.3 ##########################\n')
# n, e, d = cleRSA2048()
# print("Génération de la clé à 2048 bits : ")
# print("n = {}".format(n))
# print("e = {}".format(e))
# print("d = {}".format(d))

########################## Question 5.5 ##########################
print('\n\n########################## Question 5.5 ##########################\n')
print('\n\n########################## Protocole 1 ##########################\n')
cle_alice = cleRSA(5)
cle_bob = cleRSA(5)
nc = min(cle_alice[0], cle_bob[0])/4

m1 = "'Rendez-vous demain vers 14 heures'"
s1 = "'al94f60'"
print("m1 = {}".format(m1))
print("s1 = {}\n".format(s1))

print("na = {}".format(cle_alice[0]))
print("nb = {}".format(cle_bob[0]))
print("nc = {}\n".format(nc))

m2C, s2C = protocole1Encrypting(m1, s1, cle_alice[0], cle_alice[2], cle_bob[0], cle_bob[1], nc)
print("Alice chiffre le message avec la clé publique de Bob...")
print("Alice chiffre sa signature avec sa clé privée...")
print("m2c = {}".format(m2C))
print("s2c = {}\n".format(s2C))

print("Le message et la signature cryptés (m2c et s2c) sont envoyé à Bob...")

m1, s1 = protocole1Decrypting(m2C, s2C, cle_alice[0], cle_alice[1], cle_bob[0], cle_bob[2], nc)
print("Bob déchiffre le message avec sa clé privée...")
print("Bob déchiffre la signature avec la clé publique d'Alice...")

print("m1 = '{}'".format(m1))
print("s1 = '{}'".format(s1))

print('\n\n########################## Protocole 2 ##########################\n')
cle_alice = cleRSA(5)
cle_bob = cleRSA(5)
nc = min(cle_alice[0], cle_bob[0])/4

m1 = "Rendez-vous demain vers 14 heures"
print("m1 = '{}'\n".format(m1))

print("na = {}".format(cle_alice[0]))
print("nb = {}".format(cle_bob[0]))
print("nc = {}\n".format(nc))

m3C = protocole2Encrypting("Rendez-vous demain vers 14 heures", cle_alice[0], cle_alice[2], cle_bob[0], cle_bob[1], 3)
if cle_alice[0] > cle_bob[0]:
	print("Alice chiffre une première fois le message avec la clé publique de Bob...")
	print("Alice chiffre une deuxième fois le message déjà chiffré (une fois) avec sa clé privée...")
else:
	print("Alice chiffre une première fois le message avec sa clé privée...")
	print("Alice chiffre une deuxième fois le message déjà chiffré (une fois) avec la clé publique de Bob...")

print("m3C = {}\n".format(m3C))

m1 = protocole2Decrypting(m3C, cle_alice[0], cle_alice[1], cle_bob[0], cle_bob[2], 3)
print("Alice crypte le message avec la clé publique de Bob...")
if cle_alice[0] > cle_bob[0]:
	print("Bob déchiffre une première fois le message chiffré avec la clé publique d'Alice...")
	print("Bob déchiffre une deuxième fois le message déjà déchiffré (une fois) avec sa clé privée...")
else:
	print("Bob déchiffre une première fois le message chiffré avec sa clé privée...")
	print("Bob déchiffre une deuxième fois le message déjà déchiffré (une fois) avec la clé publique d'Alice...")
print("m1 = '{}'".format(m1))