load("1_5.sage")
load("1_6.sage")
load("2.sage")
load("3_2.sage")
load("3_3.sage")
load("4_1.sage")
load("4_2.sage")
load("4_3.sage")
load("4_4.sage")

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
	gcd, iterations = euclideanAlgorithm(fibonacci(i + 1), fibonacci(i))
	print("PGCD(fibonacci({}), fibonacci({})) = {} : obtenu en {} itération(s) via l'algorithme d'Euclide.".format(i + 1, i, gcd, iterations))
gcd, iterations = euclideanAlgorithm(29753, 4578)
print("PGCD({}, {}) = {} : obtenu en {} itération(s) via l'algorithme d'Euclide.".format(29753, 4578, gcd, iterations))
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
print("La liste des nombres premiers inférieurs à 257 est la suivante :")
results = nombre_prime()
for value in results:
	print("{}".format(value))

print("")

print("La liste des nombres de Mersenne inférieurs à 257 est la suivante :")
results = nombre_mersenne()
for cle, valeur in results.items():
	print("p={} : Mp={}".format(cle, valeur))

print('\n\n########################## Question 3.3.2 ##########################\n')
print("La liste des nombres de Mersenne et premiers inférieurs à 257 est la suivante :")
results = nombre_prime_mersenne()
for cle, valeur in results.items():
	print cle	
	#print("p={} : Mp={} \t".format(cle, valeur))

########################## Question 4.1 ##########################
print('\n\n########################## Question 4.1 ##########################\n')
bases = [-5, 7] 
exponents = [-64, -15, 0, 13, 79]
for x in bases:
	for n in exponents:
		print("{}^({}) = {}".format(x, n, x^(n)))
		print("iterativePow({}, {}) = {}".format(x, n, iterativePow(x, n)))
		print("recursivePow({}, {}) = {}".format(x, n, recursivePow(x, n)))
		print("")

########################## Question 4.2 ##########################
print('\n\n########################## Question 4.2 ##########################\n')
bases = [-5, 7] 
exponents = [-64, -15, 0, 13, 79]
for x in bases:
	for n in exponents:
		print("{}^({}) = {}".format(x, n, x^(n)))
		print("iterativeDichotomicPow({}, {}) = {}".format(x, n, iterativeDichotomicPow(x, n)))
		print("recursiveDichotomicPow({}, {}) = {}".format(x, n, recursiveDichotomicPow(x, n)))
		print("")

########################## Question 4.3 ##########################
print('\n\n########################## Question 4.3 ##########################\n')
bases = [-5, 7] 
exponents = [0, 13, 79]
moduli = [7, 17]
for modulus in moduli:
	for x in bases:
		for n in exponents:		
			print("mod({}^({}), {}) = {}".format(x, n, modulus, mod(x^(n), modulus)))
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